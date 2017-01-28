import json
f = open("tasks_comments.json", "r")

tasks_raw = json.load(f)
f.close()
results = tasks_raw["results"]

for key in results:
    if key["task_instance_id"] == 63477582334525444:
        print key["author"]["display_name"], key["text"]
        print key
        print

    if key["attachments"]:
        print key["attachments"]
