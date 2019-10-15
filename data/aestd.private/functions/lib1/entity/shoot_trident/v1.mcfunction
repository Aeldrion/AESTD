# Author: Aeldrion
# Version: 19w41a
# Project: AESTD

# Summoning the trident and copying data if needed
execute if entity @s[tag=aestd.trident.from_inventory] unless entity @s[predicate=!aestd.private:holding_trident_mainhand, predicate=!aestd.private:holding_trident_offhand] run function aestd.private:lib1/entity/shoot_trident/from_inventory_v1
execute unless entity @s[tag=aestd.trident.from_inventory] run function aestd.private:lib1/entity/shoot_trident/not_from_inventory_v1

# Setting the trident's motion
execute if entity @s[type=minecraft:player] as @e[type=minecraft:trident, tag=aestd.trident.last_shot, limit=1] positioned as @s positioned ^ ^ ^10 run function aestd1:entity/set_motion_from_position
execute unless entity @s[type=minecraft:player] as @e[type=minecraft:trident, tag=aestd.trident.last_shot, limit=1] positioned as @s positioned ^ ^ ^6.5 run function aestd1:entity/set_motion_from_position

# Setting the trident's owner
data modify storage aestd:private UUID set from storage aestd:data UUID
function aestd1:entity/get_uuid
execute as @e[type=minecraft:trident, tag=aestd.trident.last_shot, limit=1] run function aestd1:entity/projectile/set_owner_uuid
data modify storage aestd:data UUID set from storage aestd:private UUID
