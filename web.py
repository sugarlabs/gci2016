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

from flask import Flask
from flask import render_template

app = Flask(__name__)
app.jinja_env.add_extension('jinja2.ext.do')


@app.route('/')
def tasks():
    f = open("tasks_definitions.json", "r")
    tasks_raw = json.load(f)
    f.close()

    results = tasks_raw["results"]
    tasks_definitions = []
    for task in results:
        if task["status"] == 2:
            tasks_definitions.append([task["name"], task["id"]])

    tasks_instances = []

    f = open("tasks_instances.json", "r")
    tasks_raw = json.load(f)
    f.close()

    results = tasks_raw["results"]
    tasks_instances = []
    for task in results:
        tasks_instances.append([task["task_definition"]["name"], task[
                               "task_definition_id"], task["id"], task["claimed_by"]["display_name"]])

    return render_template(
        "tasks.html",
        tasks_definitions=sorted(tasks_definitions),
        tasks_instances=tasks_instances)

if __name__ == '__main__':
    app.run(debug=True, host="0.0.0.0", port=5000)
