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
import requests
import os

f = open("orgs_data.json", "r")
data = json.load(f)["results"]
f.close()

if not os.path.exists("static"):
    os.mkdir("static")

if not os.path.exists("static/img"):
    os.mkdir("static/img")

for org in data:
    image_url = org["image_url"]
    z = requests.get("http:%s" % image_url)
    f = open("static/img/%s.png" % org["slug"], "w")
    f.write(z.content)
    f.close()
    print "Icon for %s downloaded." % org["name"]
