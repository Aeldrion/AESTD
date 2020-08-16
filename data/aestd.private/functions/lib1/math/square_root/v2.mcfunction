execute if score $in aestd.math matches ..-1 run scoreboard players reset $out aestd.math
execute if score $in aestd.math matches 0..1 run scoreboard players operation $out aestd.math = $in aestd.math
execute unless score $in aestd.math matches ..1 run function aestd1.private:lib1/math/square_root/init_v2