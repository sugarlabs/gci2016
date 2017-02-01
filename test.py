import utils
comments = utils.get_comments(5692814887223296)
comments.reverse()
for comment in comments:
    print comment["old_task_instance_status"]
    print comment["new_task_instance_status"]
#	print comment["text"]
    print
