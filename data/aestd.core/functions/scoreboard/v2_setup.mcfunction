# Author: Aeldrion
# Version: 1.16.2
# Project: AESTD

## GENERIC OBJECTIVES
scoreboard objectives add aestd dummy
scoreboard objectives add aestd.var dummy
scoreboard objectives add aestd.list_mode dummy


## BLOCK FUNCTIONS
scoreboard objectives add aestd.block.id dummy


## ENTITY FUNCTIONS
# Position
scoreboard objectives add aestd.pos.x dummy
scoreboard objectives add aestd.pos.y dummy
scoreboard objectives add aestd.pos.z dummy
# Damage
scoreboard objectives add aestd.damage dummy
scoreboard objectives add aestd.damage.hp dummy
# Direction
scoreboard objectives add aestd.dir.x dummy
scoreboard objectives add aestd.dir.y dummy
scoreboard objectives add aestd.dir.z dummy
# Motion
scoreboard objectives add aestd.motion.x dummy
scoreboard objectives add aestd.motion.y dummy
scoreboard objectives add aestd.motion.z dummy
# Rotation
scoreboard objectives add aestd.rot.x dummy
scoreboard objectives add aestd.rot.y dummy


## CONTEXT FUNCTIONS
scoreboard objectives add aestd.context dummy


## MATH FUNCTIONS
# generic
scoreboard objectives add aestd.math dummy
scoreboard objectives add aestd.math.const dummy


## ITEM FUNCTIONS
scoreboard objectives add aestd.item.cmd dummy
scoreboard objectives add aestd.item.count dummy
scoreboard objectives add aestd.item.dmg dummy
scoreboard objectives add aestd.item.drblt dummy
scoreboard objectives add aestd.item.ench dummy
scoreboard objectives add aestd.item.lvl dummy
scoreboard objectives add aestd.item.slot dummy
scoreboard objectives add aestd.item.slot2 dummy


## PLAYER FUNCTIONS
scoreboard objectives add aestd.player.xp dummy
scoreboard objectives add aestd.player.rcd dummy


## WORLD FUNCTIONS
scoreboard objectives add aestd.weather dummy
scoreboard objectives add aestd.time dummy
scoreboard objectives add aestd.time.moon dummy
scoreboard objectives add aestd.time.dayp dummy


## FUNCTION TAGS
scoreboard objectives add aestd.deaths deathCount
scoreboard objectives add aestd.click_coas minecraft.used:minecraft.carrot_on_a_stick


## SETTING UP SCORES
scoreboard players set #aestd.lcg.multiplier aestd.math.var 1630111353
scoreboard players set #aestd.lcg.increment aestd.math.var 1623164762
scoreboard players set #aestd.lcg.modulus aestd.math.var 2147483647

scoreboard players set $-1 aestd.math.const -1
scoreboard players set $2 aestd.math.const 2
scoreboard players set $3 aestd.math.const 3
scoreboard players set $4 aestd.math.const 4
scoreboard players set $5 aestd.math.const 5
scoreboard players set $8 aestd.math.const 8
scoreboard players set $20 aestd.math.const 20
scoreboard players set $60 aestd.math.const 60
scoreboard players set $100 aestd.math.const 100
scoreboard players set $300 aestd.math.const 300
scoreboard players set $1000 aestd.math.const 1000
scoreboard players set $1200 aestd.math.const 1200
scoreboard players set $6000 aestd.math.const 6000
scoreboard players set $24000 aestd.math.const 24000
scoreboard players set $72000 aestd.math.const 72000

execute store result score $aetlas.seed aetlas.var run seed
