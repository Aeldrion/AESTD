##################################### Libs #####################################
import json

##################################### Defs #####################################

def convert_nbt(data,parent={}):
    if type(data) == str:
        return '"' + data.replace("\\","\\\\\\").replace('"','\\"') + '"'
    elif type(data) == list:
        return "[" + ",".join(list(map(lambda tag: convert_nbt(tag,parent=parent),data))) + "]"
    elif type(data) == dict:
        return "{" + ",".join(list(map(lambda key: key+":"+convert_nbt(data[key],parent=key),data))) + "}"
    elif type(data) == bool:
        return str(int(data))+"b"
    elif type(data) in [int,float]:
        try: return str(int(data)) + TAGS[parent]
        except KeyError:
            if type(data) == int: return str(int(data))
            if type(data) == float: return str(int(data)) + "f"
    return nbt

def read_file(filename):
    file = open(filename,mode="r")
    data = json.load(file)
    file.close()
    return data

##################################### Main #####################################

TAGS = {
        "Age": "s", # Should be a long for end gateways
        "Air": "s",
        "Amplifier": "b",
        "Anger": "s",
        "AttachFace": "b",
        "Base": "d",
        "Body": "f",
        "BurnTime": "s",
        "CollarColor": "b",
        "Color": "b",
        "ConversionPlayerLeast": "L",
        "ConversionPlayerMost": "L",
        "CookTime": "s",
        "CookTimeTotal": "s",
        "Count": "b", # damage should be a double for arrows
        "DeathLootTableSeed": "L",
        "DeathTime": "s",
        "Delay": "s",
        "DurationOnUse": "f",
        "ExplosionRadius": "b",
        "Facing": "b",
        "FallHurtAmount": "f",
        "Fire": "s",
        "Flight": "b",
        "Fuel": "s",
        "Fuse": "s",
        "Head": "f",
        "HurtTime": "s",
        "Id": "b",
        "ItemDropChance": "f",
        "ItemRotation": "b",
        "L": "L",
        "LastExecution": "L",
        "LeftArm": "f",
        "LeftLeg": "f",
        "life": "s",
        "LoveCauseLeast": "L",
        "LoveCauseMost": "L",
        "M": "L",
        "MaxNearbyEntities": "s",
        "MaxSpawnDelay": "s",
        "MinSpawnDelay": "s",
        "Motion": "d",
        "OwnerUUIDLeast": "L",
        "OwnerUUIDMost": "L",
        "Peek": "b",
        "pickup": "b",
        "PickupDelay": "s",
        "Pos": "d",
        "power": "d",
        "progress": "f",
        "PushX": "d",
        "PushZ": "d",
        "Radius": "f",
        "RadiusOnUse": "f",
        "RadiusPerTick": "f",
        "RequiredPlayerRange": "s",
        "RightArm": "f",
        "RightLeg": "f",
        "shake": "b",
        "Slot": "b",
        "SpawnCount": "s",
        "SpawnRange": "s",
        "TXD": "d",
        "TYD": "d",
        "Type": "b",
        "TZD": "d",
        "UUIDLeast": "L",
        "UUIDMost": "L",
        "Value": "s"
    }
