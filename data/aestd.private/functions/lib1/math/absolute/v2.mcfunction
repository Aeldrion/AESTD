scoreboard players set $out aestd.math 0
execute if score $in aestd.math matches ..-1 run scoreboard players operation $out aestd.math -= $in aestd.math
execute if score $in aestd.math matches 0.. run scoreboard players operation $out aestd.math += $in aestd.math