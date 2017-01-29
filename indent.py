import json
import sys

x = open(sys.argv[1], "r")
z = json.load(x)
x.close()

x = open(sys.argv[1], "w")
json.dump(z, x, indent=4)
x.close()
