# Written by Aeldrion, Minecraft 1.14
# Advancements are weird.

function #aestd:take_damage
advancement revoke @s only aestd.internal:take_damage

execute if score @s aestd.deaths matches 1.. run function aestd.internal:tags/run_player_dies
