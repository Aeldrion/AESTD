import urllib.request
import json

def get_items(tags):
	values = []
	for tag in tags:
		with open(tag+".json", mode="r") as file:
			file_contents = json.loads("".join(file.readlines()))
			values += file_contents["values"]
	return values

# Loading items from Arcensoth's mcdata GitHub repository
data = urllib.request.urlopen("https://raw.githubusercontent.com/Arcensoth/mcdata/master/processed/reports/registries/item/item.min.json")
items = json.loads(data.readline())["values"]

# Loading items from AESTD item tags
items_in_tags = get_items(["all_but_air"]) + ["minecraft:air"]

# Comparing
print("------------")
print("The following items are in registries but cannot be found in item tags:")
count = 0
for item in items:
	if item not in items_in_tags:
		print(" " + item)
		count += 1
if count == 0:
	print(" (none)")
else:
	print("Total:", count)

print("------------")
print("The following items are in item tags but do not exist:")
count = 0
for item in items_in_tags:
	if item not in items:
		print(" " + item)
		count += 1
if count == 0:
	print(" (none)")
else:
	print("Total:", count)

print("------------")