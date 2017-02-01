#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Copyright (C) Ignacio Rodríguez <ignacio@sugarlabs.org>

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>

import json

c_names = {1: "Code",
           2: "User Interface",
           3: "Documentation / Training",
           4: "Quality Assurance",
           5: "Outreach / Research"}

task_status = {1: "Task claimed",
               2: "Task abandoned",
               3: "Unassigned by mentor",
               4: "Submitted for review",
               5: "More work needed",
               6: "Out of time",
               7: "Task approved",
               8: "Task approved -- Pending parental consent"}

# Open files only once
f = open("json_data/orgs_data.json", "r")
org_global_data = json.load(f)["results"]
f.close()
del f

f = open("json_data/tasks_definitions.json", "r")
tasks_definitions_raw = json.load(f)["results"]
f.close()
del f

f = open("json_data/tasks_comments.json", "r")
comments_raw = json.load(f)["results"]
f.close()
del f

f = open("json_data/files.json", "r")
files_raw = json.load(f)
f.close()
del f


def format_size(size):
    if not size:
        return 'Empty'
    elif size < 1024:
        return '%d B' % size
    elif size < 1024 ** 2:
        return '%d KB' % (size / 1024)
    elif size < 1024 ** 3:
        return '%d MB' % (size / 1024 ** 2)
    else:
        return '%d GB' % (size / 1024 ** 3)


def get_org(org_id, key):
    org_name = None
    for org_data in org_global_data:
        if int(org_data["id"]) == int(org_id):
            org_name = org_data[key]

    return org_name


def get_task_definition(task_id):
    task = None
    for task_definition in tasks_definitions_raw:
        if int(task_id) == int(task_definition["id"]):
            task = task_definition

    return task


def get_categories(task_id):
    task_data = get_task_definition(task_id)
    categories = []
    for category in task_data["categories"]:
        categories.append(c_names[category])

    return categories


def get_comments(task_instance_id):
    comments = []
    for comment in comments_raw:
        if comment["task_instance_id"] == int(task_instance_id):
            comments.append(comment)

    comments.reverse()
    student = comments[0]["author"]["display_name"]
    student_claimed = comments[0]["created"]

    for comment in comments:
        comment["text"] = comment["text"].replace("\n", "<br>")

        old_status = comment["old_task_instance_status"]
        new_status = comment["new_task_instance_status"]

        if old_status != new_status:
            comment["text"] = task_status[new_status]

        author_type = " (mentor) "
        if comment["author_is_student"]:
            author_type = " (student) "

        if comment["author"] is None:
            comment["author"] = {"display_name": "Google Code-In System"}
            author_type = ""

        if comment["attachments"]:
            if comment["text"]:
                comment["text"] += "<br><br>"

            comment["text"] += "Attachments:<br>\n"
            current = 1
            last_attachment = len(comment["attachments"])
            for attachment in comment["attachments"]:
                thing = "├──"
                if current == last_attachment:
                    thing = "└──"

                url = "/attachments/%s" % attachment["id"]
                size = format_size(attachment["file_size"])
                name = attachment["filename"]

                comment[
                    "text"] += "%s <a href='%s'>%s</a> (%s)\n" % (thing.decode("utf-8"), url, name, size)
                current += 1

        comment["text"] = "<big><b>%s</b>%s<span class='totheright'>%s</span></big><br><br>%s" % (
            comment["author"]["display_name"], author_type, comment["created"], comment["text"])

    comments[0]["text"] = "<big><b>%s</b> (student)  <span class='totheright'>%s</span></big><br><br>%s" % (
        student, student_claimed, task_status[1])
    return comments


def get_filename(attachment_id):
    filename = ""
    for f in files_raw:
        if f[0] == int(attachment_id):
            filename = "%s-%s" % (attachment_id, f[1])

    return filename
