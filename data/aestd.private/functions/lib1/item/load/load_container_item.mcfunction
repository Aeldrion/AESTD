# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

# Loads an item to a container from storage

replaceitem block -30000000 0 7777 container.0 minecraft:air
data modify block -30000000 0 7777 Items append from storage aestd:data Item

execute if score @s aestd.item.slot matches 0 run loot replace block ~ ~ ~ container.0 1 mine -30000000 0 7777 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 1 run loot replace block ~ ~ ~ container.1 1 mine -30000000 0 7777 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 2 run loot replace block ~ ~ ~ container.2 1 mine -30000000 0 7777 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 3 run loot replace block ~ ~ ~ container.3 1 mine -30000000 0 7777 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 4 run loot replace block ~ ~ ~ container.4 1 mine -30000000 0 7777 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 5 run loot replace block ~ ~ ~ container.5 1 mine -30000000 0 7777 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 6 run loot replace block ~ ~ ~ container.6 1 mine -30000000 0 7777 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 7 run loot replace block ~ ~ ~ container.7 1 mine -30000000 0 7777 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 8 run loot replace block ~ ~ ~ container.8 1 mine -30000000 0 7777 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 9 run loot replace block ~ ~ ~ container.9 1 mine -30000000 0 7777 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 10 run loot replace block ~ ~ ~ container.10 1 mine -30000000 0 7777 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 11 run loot replace block ~ ~ ~ container.11 1 mine -30000000 0 7777 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 12 run loot replace block ~ ~ ~ container.12 1 mine -30000000 0 7777 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 13 run loot replace block ~ ~ ~ container.13 1 mine -30000000 0 7777 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 14 run loot replace block ~ ~ ~ container.14 1 mine -30000000 0 7777 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 15 run loot replace block ~ ~ ~ container.15 1 mine -30000000 0 7777 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 16 run loot replace block ~ ~ ~ container.16 1 mine -30000000 0 7777 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 17 run loot replace block ~ ~ ~ container.17 1 mine -30000000 0 7777 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 18 run loot replace block ~ ~ ~ container.18 1 mine -30000000 0 7777 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 19 run loot replace block ~ ~ ~ container.19 1 mine -30000000 0 7777 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 20 run loot replace block ~ ~ ~ container.20 1 mine -30000000 0 7777 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 21 run loot replace block ~ ~ ~ container.21 1 mine -30000000 0 7777 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 22 run loot replace block ~ ~ ~ container.22 1 mine -30000000 0 7777 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 23 run loot replace block ~ ~ ~ container.23 1 mine -30000000 0 7777 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 24 run loot replace block ~ ~ ~ container.24 1 mine -30000000 0 7777 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 25 run loot replace block ~ ~ ~ container.25 1 mine -30000000 0 7777 minecraft:air{drop_contents:1b}
execute if score @s aestd.item.slot matches 26 run loot replace block ~ ~ ~ container.26 1 mine -30000000 0 7777 minecraft:air{drop_contents:1b}
