execute store result score $out.time.hours aestd.math store result score $out.time.minutes aestd.math store result score $out.time.seconds aestd.math store result score $out.time.hundredths aestd.math run scoreboard players get $in aestd.math

scoreboard players operation $out.time.hundredths aestd.time *= $5 aestd.math.const
scoreboard players operation $out.time.hundredths aestd.time %= $100 aestd.math.const

scoreboard players operation $out.time.seconds aestd.time /= $20 aestd.math.const
scoreboard players operation $out.time.seconds aestd.time %= $60 aestd.math.const

scoreboard players operation $out.time.minutes aestd.time /= $1200 aestd.math.const
scoreboard players operation $out.time.minutes aestd.time %= $60 aestd.math.const

scoreboard players operation $out.time.hours aestd.time /= $72000 aestd.math.const