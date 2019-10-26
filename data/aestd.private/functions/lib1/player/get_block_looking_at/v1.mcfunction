# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

scoreboard players reset #aestd aestd.pos.x
scoreboard players reset #aestd aestd.pos.y
scoreboard players reset #aestd aestd.pos.z

scoreboard players reset @s aestd.pos.x
scoreboard players reset @s aestd.pos.y
scoreboard players reset @s aestd.pos.z

scoreboard players set @s aestd.player.rcd 512
execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function aestd.private:lib1/player/get_block_looking_at/raycast_forward
