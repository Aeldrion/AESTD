# Author: Aeldrion
# Version: 1.16.2
# Project: AESTD

# Reset the time and copy executer's score to #aestd
time set 0
execute if entity @s run scoreboard players operation #aestd aestd.time = @s aestd.time
scoreboard players operation #aestd.temp aestd.time = #aestd aestd.time

# Change the time by binary increments
execute if score #aestd aestd.time matches 1073741824.. run time add 1073741824
execute if score #aestd aestd.time matches 1073741824.. run scoreboard players remove #aestd aestd.time 1073741824
execute if score #aestd aestd.time matches 536870912.. run time add 536870912
execute if score #aestd aestd.time matches 536870912.. run scoreboard players remove #aestd aestd.time 536870912
execute if score #aestd aestd.time matches 268435456.. run time add 268435456
execute if score #aestd aestd.time matches 268435456.. run scoreboard players remove #aestd aestd.time 268435456
execute if score #aestd aestd.time matches 134217728.. run time add 134217728
execute if score #aestd aestd.time matches 134217728.. run scoreboard players remove #aestd aestd.time 134217728
execute if score #aestd aestd.time matches 67108864.. run time add 67108864
execute if score #aestd aestd.time matches 67108864.. run scoreboard players remove #aestd aestd.time 67108864
execute if score #aestd aestd.time matches 33554432.. run time add 33554432
execute if score #aestd aestd.time matches 33554432.. run scoreboard players remove #aestd aestd.time 33554432
execute if score #aestd aestd.time matches 16777216.. run time add 16777216
execute if score #aestd aestd.time matches 16777216.. run scoreboard players remove #aestd aestd.time 16777216
execute if score #aestd aestd.time matches 8388608.. run time add 8388608
execute if score #aestd aestd.time matches 8388608.. run scoreboard players remove #aestd aestd.time 8388608
execute if score #aestd aestd.time matches 4194304.. run time add 4194304
execute if score #aestd aestd.time matches 4194304.. run scoreboard players remove #aestd aestd.time 4194304
execute if score #aestd aestd.time matches 2097152.. run time add 2097152
execute if score #aestd aestd.time matches 2097152.. run scoreboard players remove #aestd aestd.time 2097152
execute if score #aestd aestd.time matches 1048576.. run time add 1048576
execute if score #aestd aestd.time matches 1048576.. run scoreboard players remove #aestd aestd.time 1048576
execute if score #aestd aestd.time matches 524288.. run time add 524288
execute if score #aestd aestd.time matches 524288.. run scoreboard players remove #aestd aestd.time 524288
execute if score #aestd aestd.time matches 262144.. run time add 262144
execute if score #aestd aestd.time matches 262144.. run scoreboard players remove #aestd aestd.time 262144
execute if score #aestd aestd.time matches 131072.. run time add 131072
execute if score #aestd aestd.time matches 131072.. run scoreboard players remove #aestd aestd.time 131072
execute if score #aestd aestd.time matches 65536.. run time add 65536
execute if score #aestd aestd.time matches 65536.. run scoreboard players remove #aestd aestd.time 65536
execute if score #aestd aestd.time matches 32768.. run time add 32768
execute if score #aestd aestd.time matches 32768.. run scoreboard players remove #aestd aestd.time 32768
execute if score #aestd aestd.time matches 16384.. run time add 16384
execute if score #aestd aestd.time matches 16384.. run scoreboard players remove #aestd aestd.time 16384
execute if score #aestd aestd.time matches 8192.. run time add 8192
execute if score #aestd aestd.time matches 8192.. run scoreboard players remove #aestd aestd.time 8192
execute if score #aestd aestd.time matches 4096.. run time add 4096
execute if score #aestd aestd.time matches 4096.. run scoreboard players remove #aestd aestd.time 4096
execute if score #aestd aestd.time matches 2048.. run time add 2048
execute if score #aestd aestd.time matches 2048.. run scoreboard players remove #aestd aestd.time 2048
execute if score #aestd aestd.time matches 1024.. run time add 1024
execute if score #aestd aestd.time matches 1024.. run scoreboard players remove #aestd aestd.time 1024
execute if score #aestd aestd.time matches 512.. run time add 512
execute if score #aestd aestd.time matches 512.. run scoreboard players remove #aestd aestd.time 512
execute if score #aestd aestd.time matches 256.. run time add 256
execute if score #aestd aestd.time matches 256.. run scoreboard players remove #aestd aestd.time 256
execute if score #aestd aestd.time matches 128.. run time add 128
execute if score #aestd aestd.time matches 128.. run scoreboard players remove #aestd aestd.time 128
execute if score #aestd aestd.time matches 64.. run time add 64
execute if score #aestd aestd.time matches 64.. run scoreboard players remove #aestd aestd.time 64
execute if score #aestd aestd.time matches 32.. run time add 32
execute if score #aestd aestd.time matches 32.. run scoreboard players remove #aestd aestd.time 32
execute if score #aestd aestd.time matches 16.. run time add 16
execute if score #aestd aestd.time matches 16.. run scoreboard players remove #aestd aestd.time 16
execute if score #aestd aestd.time matches 8.. run time add 8
execute if score #aestd aestd.time matches 8.. run scoreboard players remove #aestd aestd.time 8
execute if score #aestd aestd.time matches 4.. run time add 4
execute if score #aestd aestd.time matches 4.. run scoreboard players remove #aestd aestd.time 4
execute if score #aestd aestd.time matches 2.. run time add 2
execute if score #aestd aestd.time matches 2.. run scoreboard players remove #aestd aestd.time 2
execute if score #aestd aestd.time matches 1.. run time add 1
execute if score #aestd aestd.time matches 1.. run scoreboard players remove #aestd aestd.time 1

# Reset the score
scoreboard players operation #aestd aestd.time = #aestd.temp aestd.time