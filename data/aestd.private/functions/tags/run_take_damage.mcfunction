# Written by Aeldrion, Minecraft 1.14
# Advancements are weird.

function #aestd:take_damage
advancement revoke @s only aestd.private:take_damage

execute if score @s aestd.deaths matches 1.. run function aestd.private:tags/run_player_dies
