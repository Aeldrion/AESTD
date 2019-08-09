# Author: Aeldrion
# Version: 1.14.4
# Project: AESTD

# Converts a time in ticks into hours, minutes, seconds and hundredths
# Input: aestd.math.in, output: aestd.time (Playernames: #aestd.hours, #aestd.minutes, #aestd.seconds, #aestd.hundredths)

scoreboard players set $5 aestd.math.var 5
scoreboard players set $20 aestd.math.var 20
scoreboard players set $60 aestd.math.var 60
scoreboard players set $1200 aestd.math.var 1200
scoreboard players set $6000 aestd.math.var 6000
scoreboard players set $72000 aestd.math.var 72000

scoreboard players operation #aestd aestd.math.var = @s aestd.math.in

scoreboard players operation #aestd.hundredths aestd.time = #aestd aestd.math.var
scoreboard players operation #aestd.hundredths aestd.time *= $5 aestd.math.var
scoreboard players operation #aestd.hundredths aestd.time %= $100 aestd.math.var

scoreboard players operation #aestd.seconds aestd.time = #aestd aestd.math.var
scoreboard players operation #aestd.seconds aestd.time /= $20 aestd.math.var
scoreboard players operation #aestd.seconds aestd.time %= $60 aestd.math.var

scoreboard players operation #aestd.minutes aestd.time = #aestd aestd.math.var
scoreboard players operation #aestd.minutes aestd.time /= $1200 aestd.math.var
scoreboard players operation #aestd.minutes aestd.time %= $60 aestd.math.var

scoreboard players operation #aestd.hours aestd.time = #aestd aestd.math.var
scoreboard players operation #aestd.hours aestd.time /= $72000 aestd.math.var
