# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Loads an item to a player's container from storage

replaceitem block -30000000 0 8888 container.0 minecraft:air
data modify block -30000000 0 8888 Items append from storage aestd:data Item

execute if score @s aestd.item.slot matches -1 run loot replace entity @s weapon.mainhand 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches -2 run loot replace entity @s weapon.offhand 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}

execute if score @s aestd.item.slot matches 0 run loot replace entity @s container.0 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 1 run loot replace entity @s container.1 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 2 run loot replace entity @s container.2 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 3 run loot replace entity @s container.3 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 4 run loot replace entity @s container.4 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 5 run loot replace entity @s container.5 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 6 run loot replace entity @s container.6 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 7 run loot replace entity @s container.7 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 8 run loot replace entity @s container.8 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 9 run loot replace entity @s container.9 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 10 run loot replace entity @s container.10 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 11 run loot replace entity @s container.11 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 12 run loot replace entity @s container.12 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 13 run loot replace entity @s container.13 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 14 run loot replace entity @s container.14 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 15 run loot replace entity @s container.15 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 16 run loot replace entity @s container.16 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 17 run loot replace entity @s container.17 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 18 run loot replace entity @s container.18 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 19 run loot replace entity @s container.19 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 20 run loot replace entity @s container.20 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 21 run loot replace entity @s container.21 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 22 run loot replace entity @s container.22 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 23 run loot replace entity @s container.23 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 24 run loot replace entity @s container.24 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 25 run loot replace entity @s container.25 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 26 run loot replace entity @s container.26 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 27 run loot replace entity @s container.27 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 28 run loot replace entity @s container.28 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 29 run loot replace entity @s container.29 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 30 run loot replace entity @s container.30 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 31 run loot replace entity @s container.31 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 32 run loot replace entity @s container.32 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 33 run loot replace entity @s container.33 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 34 run loot replace entity @s container.34 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 35 run loot replace entity @s container.35 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}

execute if score @s aestd.item.slot matches 100 run loot replace entity @s armor.feet 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 101 run loot replace entity @s armor.legs 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 102 run loot replace entity @s armor.chest 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 103 run loot replace entity @s armor.head 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}

execute if score @s aestd.item.slot matches -106 run loot replace entity @s weapon.offhand 1 mine -30000000 0 8888 minecraft:air{drop_contents:1b}
