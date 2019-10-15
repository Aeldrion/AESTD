# Author: Aeldrion
# Version: 19w41a
# Project: AESTD timer

# Displays a timer to the executing player as a subtitle, based on their aestd.math.in score (in ticks)

function aestd1:math/ticks_to_time

execute if score #aestd.hours aestd.time matches 0 if score #aestd.minutes aestd.time matches ..9 if score #aestd.seconds aestd.time matches ..9 run title @s subtitle ["0",{"score":{"name":"#aestd.minutes","objective":"aestd.time"}},":0",{"score":{"name":"#aestd.seconds","objective":"aestd.time"}}]
execute if score #aestd.hours aestd.time matches 0 if score #aestd.minutes aestd.time matches ..9 if score #aestd.seconds aestd.time matches 10.. run title @s subtitle ["0",{"score":{"name":"#aestd.minutes","objective":"aestd.time"}},":",{"score":{"name":"#aestd.seconds","objective":"aestd.time"}}]
execute if score #aestd.hours aestd.time matches 0 if score #aestd.minutes aestd.time matches 10.. if score #aestd.seconds aestd.time matches ..9 run title @s subtitle ["",{"score":{"name":"#aestd.minutes","objective":"aestd.time"}},":0",{"score":{"name":"#aestd.seconds","objective":"aestd.time"}}]
execute if score #aestd.hours aestd.time matches 0 if score #aestd.minutes aestd.time matches 10.. if score #aestd.seconds aestd.time matches 10.. run title @s subtitle ["",{"score":{"name":"#aestd.minutes","objective":"aestd.time"}},":",{"score":{"name":"#aestd.seconds","objective":"aestd.time"}}]

execute if score #aestd.hours aestd.time matches 1.. if score #aestd.minutes aestd.time matches ..9 if score #aestd.seconds aestd.time matches ..9 run title @s subtitle [{"score":{"name":"#aestd.hours","objective":"aestd.time"}},":0",{"score":{"name":"#aestd.minutes","objective":"aestd.time"}},":0",{"score":{"name":"#aestd.seconds","objective":"aestd.time"}}]
execute if score #aestd.hours aestd.time matches 1.. if score #aestd.minutes aestd.time matches ..9 if score #aestd.seconds aestd.time matches 10.. run title @s subtitle [{"score":{"name":"#aestd.hours","objective":"aestd.time"}},":0",{"score":{"name":"#aestd.minutes","objective":"aestd.time"}},":",{"score":{"name":"#aestd.seconds","objective":"aestd.time"}}]
execute if score #aestd.hours aestd.time matches 1.. if score #aestd.minutes aestd.time matches 10.. if score #aestd.seconds aestd.time matches ..9 run title @s subtitle [{"score":{"name":"#aestd.hours","objective":"aestd.time"}},":",{"score":{"name":"#aestd.minutes","objective":"aestd.time"}},":0",{"score":{"name":"#aestd.seconds","objective":"aestd.time"}}]
execute if score #aestd.hours aestd.time matches 1.. if score #aestd.minutes aestd.time matches 10.. if score #aestd.seconds aestd.time matches 10.. run title @s subtitle [{"score":{"name":"#aestd.hours","objective":"aestd.time"}},":",{"score":{"name":"#aestd.minutes","objective":"aestd.time"}},":",{"score":{"name":"#aestd.seconds","objective":"aestd.time"}}]
