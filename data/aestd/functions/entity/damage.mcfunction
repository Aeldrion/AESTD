# Written by Aeldrion, Minecraft 1.14
# Damages the sender by (damage/100) HP, does not work on players
# Input: aestd.damage, output: sender

# Settings:
# - aestd.damage.hurt_by_player : when a mob has this tag, it will act as if it was hit by the player whose UUID is saved (see aestd:player/get_uuid)
# - aestd.damage.fire : when a mob has this tag, it will be set on fire

# Notes:
# There are a lot of bugs with nbt editing, health and damage. The order of these commands is
# important and the distinction between the case where the entity dies and the case where it
# doesn't is necessary.
# Don't increase the fire value as the entity may die instantly.
# If you notice any issue, report them on the discord server linked here: https://discord.gg/mUBnAcM


# Take health
execute store result score @s aestd.damage.hp run data get entity @s Health 100
scoreboard players operation @s aestd.damage.hp -= @s aestd.damage

### Case where the entity dies
# Set fire
data merge entity @s[scores={aestd.damage.hp=..0},tag=aestd.damage.fire] {Fire:19s}

# Anger
execute if entity @s[scores={aestd.damage.hp=..0},tag=aestd.damage.hurt_by_player] run function aestd:entity/anger

# Kill
kill @s[scores={aestd.damage.hp=..0}]


### Case where the entity survives
# Remove health
execute store result entity @s[scores={aestd.damage=1..}] Health float 0.01 run scoreboard players get @s aestd.damage.hp

# Set fire if it has a fire tag
data merge entity @s[tag=aestd.damage.fire] {Fire:19s}

# Make it look damaged
execute unless entity @s[tag=aestd.damage.hurt_by_player] run function aestd:entity/fake_damage

# Anger the mob if it has a hurt_by_player tag
execute if entity @s[tag=aestd.damage.hurt_by_player] run function aestd:entity/anger


# Explanation:
# If the entity dies, it is necessary to run the anger and fire commands so that it drops the
# correct items (eg cooked beef) and drops experience.
# If it doesn't, setting fire/angering the entity in a different order may kill the entity or
# remove the anger effect, for reasons that I do not know or understand.
