execute positioned as @s positioned ^ ^ ^4 run function aestd1:entity/set_direction_from_position
data modify entity @s power set from entity @s direction

data merge entity @s {OwnerUUIDLeast: 0L, OwnerUUIDMost: 0L, direction: [0.0d, 0.0d, 0.0d]}
data modify entity @s OwnerUUIDLeast set from storage aestd:private Owner.UUIDLeast
data modify entity @s OwnerUUIDMost set from storage aestd:private Owner.UUIDMost

tag @e[type=minecraft:fireball, tag=aestd.new, limit=1] remove aestd.new