# Untag 'last shot' trident
tag @e[type=minecraft:trident, tag=aestd.trident.last_shot, limit=1] remove aestd.trident.last_shot

# Summon trident
execute if entity @s[type=minecraft:player, gamemode=!adventure, gamemode=!survival] run summon minecraft:trident ^ ^ ^1 {Tags: ["aestd.trident.last_shot"], pickup: 2b}
execute if entity @s[type=minecraft:player, gamemode=!creative, gamemode=!spectator] run summon minecraft:trident ^ ^ ^1 {Tags: ["aestd.trident.last_shot"], pickup: 1b}
execute unless entity @s[type=minecraft:player] run summon minecraft:trident ^ ^ ^1 {Tags: ["aestd.trident.last_shot"], pickup: 0b}
playsound minecraft:entity.drowned.shoot voice @s ~ ~ ~ 1 0.5

# Check in which slot the trident is held
execute store success score #aestd.trident_hand aestd.var if entity @s[predicate=aestd.private:holding_trident_mainhand]

# Copy item data to storage and clear mainhand/offhand if needed
execute if score #aestd.trident_hand aestd.var matches 1 run data modify storage aestd.private TridentData set from entity @s[type=minecraft:player] SelectedItem
execute if score #aestd.trident_hand aestd.var matches 0 run data modify storage aestd.private TridentData set from entity @s[type=minecraft:player] Inventory[{Slot:-106b}]
execute if score #aestd.trident_hand aestd.var matches 1 run data modify storage aestd.private TridentData set from entity @s[type=!minecraft:player] HandItems[0]
execute if score #aestd.trident_hand aestd.var matches 0 run data modify storage aestd.private TridentData set from entity @s[type=!minecraft:player] HandItems[1]
execute if score #aestd.trident_hand aestd.var matches 1 run replaceitem entity @s[type=minecraft:player, gamemode=!creative, gamemode=!spectator] weapon.mainhand minecraft:air
execute if score #aestd.trident_hand aestd.var matches 0 run replaceitem entity @s[type=minecraft:player, gamemode=!creative, gamemode=!spectator] weapon.offhand minecraft:air

# Damage trident item
execute store result score #aestd.trident_damage aestd.var run data get storage aestd.private TridentData.tag.Damage
execute store result score #aestd.trident_unbreaking aestd.var run data get storage aestd.private TridentData.tag.Enchantments[{id: "minecraft:unbreaking"}].lvl
execute if score #aestd.trident_unbreaking aestd.var matches 1 if predicate aestd.private:trident_unbreaking_i store result storage aestd.private TridentData.tag.Damage int 1 run scoreboard players add #aestd.trident_damage aestd.var 1
execute if score #aestd.trident_unbreaking aestd.var matches 2 if predicate aestd.private:trident_unbreaking_ii store result storage aestd.private TridentData.tag.Damage int 1 run scoreboard players add #aestd.trident_damage aestd.var 1
execute if score #aestd.trident_unbreaking aestd.var matches 3 if predicate aestd.private:trident_unbreaking_i if predicate aestd.private:trident_unbreaking_i store result storage aestd.private TridentData.tag.Damage int 1 run scoreboard players add #aestd.trident_damage aestd.var 1
execute unless score #aestd.trident_unbreaking aestd.var matches 1 store result storage aestd.private TridentData.tag.Damage int 1 run scoreboard players add #aestd.trident_damage aestd.var 1
scoreboard players reset #aestd.trident_unbreaking aestd.var
scoreboard players reset #aestd.trident_damage aestd.var

# Apply changes
data modify entity @e[type=minecraft:trident, tag=aestd.trident.last_shot, limit=1] Trident set from storage aestd.private TridentData
data remove storage aestd.private TridentData
