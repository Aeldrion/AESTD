import urllib.request
import json

# Loading items from Arcensoth's mcdata GitHub repository
data = urllib.request.urlopen("https://raw.githubusercontent.com/Arcensoth/mcdata/master/processed/reports/registries/item/item.min.json")
items = json.loads(data.readline())["values"]
items.remove("minecraft:air")

tag = {
	"description": "All items but air, for use in /clear with NBT data",
	"values": sorted(items)
}

json.dump(tag, open("all_but_air.json", mode="w"), indent=4)