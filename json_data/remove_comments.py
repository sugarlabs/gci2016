import json

f = open("tasks_attachments.json", "r")
data = json.load(f)["results"]
f.close()

comments = {"results": []}
for comment in data:
    if comment["attachments"]:
        comment = {"attachments": comment["attachments"],
                   "task_instance_id": comment["task_instance_id"]
                   }
        comments["results"].append(comment)

f = open("tasks_comments.json", "w")
json.dump(comments, f, indent=4)
f.close()
