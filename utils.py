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


def get_org(org_id, key):
    f = open("json_data/orgs_data.json", "r")
    data = json.load(f)["results"]
    f.close()

    org_name = None
    for org_data in data:
        if int(org_data["id"]) == int(org_id):
            org_name = org_data[key]

    return org_name


def get_task_definition(task_id):
    f = open("json_data/tasks_definitions.json", "r")
    tasks_raw = json.load(f)["results"]
    f.close()

    task = None
    for task_definition in tasks_raw:
        if int(task_id) == int(task_definition["id"]):
            task = task_definition

    return task
