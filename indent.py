import json
x = open("tasks_comments.json", "r")
z = json.load(x)
x.close()

x = open("tasks_comments.json", "w")
json.dump(z, x, indent=4)
x.close()
