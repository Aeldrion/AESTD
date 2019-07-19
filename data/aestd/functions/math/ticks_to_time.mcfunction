# Written by Aeldrion, Minecraft 1.14.4
# Converts a time in ticks into hours, minutes, seconds and hundredths
# Input: aestd.math.in, Output: aestd.time (Players: #aestd.hours, #aestd.minutes, #aestd.seconds, #aestd.hundredths)

scoreboard players set #aestd.5 aestd.math.var 5
scoreboard players set #aestd.20 aestd.math.var 20
scoreboard players set #aestd.60 aestd.math.var 60
scoreboard players set #aestd.1200 aestd.math.var 1200
scoreboard players set #aestd.6000 aestd.math.var 6000
scoreboard players set #aestd.72000 aestd.math.var 72000

scoreboard players operation #aestd aestd.math.var = @s aestd.math.in

scoreboard players operation #aestd.hundredths aestd.time = #aestd aestd.math.var
scoreboard players operation #aestd.hundredths aestd.time *= #aestd.5 aestd.math.var
scoreboard players operation #aestd.hundredths aestd.time %= #aestd.100 aestd.math.var

scoreboard players operation #aestd.seconds aestd.time = #aestd aestd.math.var
scoreboard players operation #aestd.seconds aestd.time /= #aestd.20 aestd.math.var
scoreboard players operation #aestd.seconds aestd.time %= #aestd.60 aestd.math.var

scoreboard players operation #aestd.minutes aestd.time = #aestd aestd.math.var
scoreboard players operation #aestd.minutes aestd.time /= #aestd.1200 aestd.math.var
scoreboard players operation #aestd.minutes aestd.time %= #aestd.60 aestd.math.var

scoreboard players operation #aestd.hours aestd.time = #aestd aestd.math.var
scoreboard players operation #aestd.hours aestd.time /= #aestd.72000 aestd.math.var
