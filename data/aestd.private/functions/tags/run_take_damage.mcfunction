# Author: Aeldrion
# Version: 1.16.2
# Project: AESTD

# Advancements are weird.

function #aestd1:take_damage
advancement revoke @s only aestd.private:take_damage

execute if score @s aestd.deaths matches 1.. run function aestd.private:tags/run_player_dies
