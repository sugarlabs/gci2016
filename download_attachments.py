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
import os
from gsession import GSession
from threading import Thread

session = GSession()

if not os.path.exists("attachments"):
    os.mkdir("attachments")


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

f = open("tasks_comments.json", "r")
tasks_raw = json.load(f)
f.close()

files = []
results = tasks_raw["results"]

for comment in results:
    attachments = comment["attachments"]
    if attachments:
        for attachment in attachments:
            id = attachment["id"]
            url = "http://codein.withgoogle.com/" + attachment["url"]
            filename = attachment["filename"]
            file_size = format_size(attachment["file_size"])
            files.append([id, filename, file_size, url])

f = open("files.json", "w")
json.dump(files, f, indent=4)
f.close()


def download(file):
    data = session.get(file[3]).content
    f = open("attachments/%s-%s" % (file[0], file[1]), "w")
    f.write(data)
    f.close()


threads = []
for file in files:
    t = Thread(target=download, args=(file,))
    threads.append(t)

    print "Thread for %s-%s (%s) added." % (file[0], file[1], file[2])
    t.start()
