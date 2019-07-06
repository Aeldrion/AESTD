
scoreboard players operation #aestd.what.x aestd.math.var = #aestd.perlin_noise.floor(x) aestd.math.var
scoreboard players operation #aestd.what.z aestd.math.var = #aestd.perlin_noise.floor(z) aestd.math.var
function aestd:math/hash_for_noise
scoreboard players operation #aestd.perlin_noise.A aestd.math.var = #aestd.what aestd.math.var

scoreboard players operation #aestd.what.x aestd.math.var = #aestd.perlin_noise.floor(x) aestd.math.var
scoreboard players operation #aestd.what.z aestd.math.var = #aestd.perlin_noise.ceil(z) aestd.math.var
function aestd:math/hash_for_noise
scoreboard players operation #aestd.perlin_noise.B aestd.math.var = #aestd.what aestd.math.var

scoreboard players operation #aestd.what.x aestd.math.var = #aestd.perlin_noise.ceil(x) aestd.math.var
scoreboard players operation #aestd.what.z aestd.math.var = #aestd.perlin_noise.floor(z) aestd.math.var
function aestd:math/hash_for_noise
scoreboard players operation #aestd.perlin_noise.C aestd.math.var = #aestd.what aestd.math.var

scoreboard players operation #aestd.what.x aestd.math.var = #aestd.perlin_noise.ceil(x) aestd.math.var
scoreboard players operation #aestd.what.z aestd.math.var = #aestd.perlin_noise.ceil(z) aestd.math.var
function aestd:math/hash_for_noise
scoreboard players operation #aestd.perlin_noise.D aestd.math.var = #aestd.what aestd.math.var


execute if score #aestd.perlin_noise.A aestd.math.var matches 0..24 run scoreboard players set #aestd.perlin_noise.A.x aestd.math.var 1
execute if score #aestd.perlin_noise.A aestd.math.var matches 0..24 run scoreboard players set #aestd.perlin_noise.A.z aestd.math.var 0
execute if score #aestd.perlin_noise.A aestd.math.var matches 25..49 run scoreboard players set #aestd.perlin_noise.A.x aestd.math.var 0
execute if score #aestd.perlin_noise.A aestd.math.var matches 25..49 run scoreboard players set #aestd.perlin_noise.A.z aestd.math.var 1
execute if score #aestd.perlin_noise.A aestd.math.var matches 50..74 run scoreboard players set #aestd.perlin_noise.A.x aestd.math.var -1
execute if score #aestd.perlin_noise.A aestd.math.var matches 50..74 run scoreboard players set #aestd.perlin_noise.A.z aestd.math.var 0
execute if score #aestd.perlin_noise.A aestd.math.var matches 75..99 run scoreboard players set #aestd.perlin_noise.A.x aestd.math.var 0
execute if score #aestd.perlin_noise.A aestd.math.var matches 75..99 run scoreboard players set #aestd.perlin_noise.A.z aestd.math.var -1

execute if score #aestd.perlin_noise.B aestd.math.var matches 0..24 run scoreboard players set #aestd.perlin_noise.B.x aestd.math.var 1
execute if score #aestd.perlin_noise.B aestd.math.var matches 0..24 run scoreboard players set #aestd.perlin_noise.B.z aestd.math.var 0
execute if score #aestd.perlin_noise.B aestd.math.var matches 25..49 run scoreboard players set #aestd.perlin_noise.B.x aestd.math.var 0
execute if score #aestd.perlin_noise.B aestd.math.var matches 25..49 run scoreboard players set #aestd.perlin_noise.B.z aestd.math.var 1
execute if score #aestd.perlin_noise.B aestd.math.var matches 50..74 run scoreboard players set #aestd.perlin_noise.B.x aestd.math.var -1
execute if score #aestd.perlin_noise.B aestd.math.var matches 50..74 run scoreboard players set #aestd.perlin_noise.B.z aestd.math.var 0
execute if score #aestd.perlin_noise.B aestd.math.var matches 75..99 run scoreboard players set #aestd.perlin_noise.B.x aestd.math.var 0
execute if score #aestd.perlin_noise.B aestd.math.var matches 75..99 run scoreboard players set #aestd.perlin_noise.B.z aestd.math.var -1

execute if score #aestd.perlin_noise.C aestd.math.var matches 0..24 run scoreboard players set #aestd.perlin_noise.C.x aestd.math.var 1
execute if score #aestd.perlin_noise.C aestd.math.var matches 0..24 run scoreboard players set #aestd.perlin_noise.C.z aestd.math.var 0
execute if score #aestd.perlin_noise.C aestd.math.var matches 25..49 run scoreboard players set #aestd.perlin_noise.C.x aestd.math.var 0
execute if score #aestd.perlin_noise.C aestd.math.var matches 25..49 run scoreboard players set #aestd.perlin_noise.C.z aestd.math.var 1
execute if score #aestd.perlin_noise.C aestd.math.var matches 50..74 run scoreboard players set #aestd.perlin_noise.C.x aestd.math.var -1
execute if score #aestd.perlin_noise.C aestd.math.var matches 50..74 run scoreboard players set #aestd.perlin_noise.C.z aestd.math.var 0
execute if score #aestd.perlin_noise.C aestd.math.var matches 75..99 run scoreboard players set #aestd.perlin_noise.C.x aestd.math.var 0
execute if score #aestd.perlin_noise.C aestd.math.var matches 75..99 run scoreboard players set #aestd.perlin_noise.C.z aestd.math.var -1

execute if score #aestd.perlin_noise.D aestd.math.var matches 0..24 run scoreboard players set #aestd.perlin_noise.D.x aestd.math.var 1
execute if score #aestd.perlin_noise.D aestd.math.var matches 0..24 run scoreboard players set #aestd.perlin_noise.D.z aestd.math.var 0
execute if score #aestd.perlin_noise.D aestd.math.var matches 25..49 run scoreboard players set #aestd.perlin_noise.D.x aestd.math.var 0
execute if score #aestd.perlin_noise.D aestd.math.var matches 25..49 run scoreboard players set #aestd.perlin_noise.D.z aestd.math.var 1
execute if score #aestd.perlin_noise.D aestd.math.var matches 50..74 run scoreboard players set #aestd.perlin_noise.D.x aestd.math.var -1
execute if score #aestd.perlin_noise.D aestd.math.var matches 50..74 run scoreboard players set #aestd.perlin_noise.D.z aestd.math.var 0
execute if score #aestd.perlin_noise.D aestd.math.var matches 75..99 run scoreboard players set #aestd.perlin_noise.D.x aestd.math.var 0
execute if score #aestd.perlin_noise.D aestd.math.var matches 75..99 run scoreboard players set #aestd.perlin_noise.D.z aestd.math.var -1

# Dot products
tellraw @s [{"score":{"name":"#aestd.perlin_noise.sx","objective":"aestd.math.var"}}," ",{"score":{"name":"#aestd.perlin_noise.sz","objective":"aestd.math.var"}}]

scoreboard players operation #aestd.perlin_noise.nA.x aestd.math.var = #aestd.perlin_noise.sx aestd.math.var
scoreboard players operation #aestd.perlin_noise.nA.x aestd.math.var *= #aestd.perlin_noise.A.x aestd.math.var
scoreboard players operation #aestd.perlin_noise.nA.z aestd.math.var = #aestd.perlin_noise.sz aestd.math.var
scoreboard players operation #aestd.perlin_noise.nA.z aestd.math.var *= #aestd.perlin_noise.A.z aestd.math.var
scoreboard players operation #aestd.perlin_noise.nA aestd.math.var = #aestd.perlin_noise.nA.x aestd.math.var
scoreboard players operation #aestd.perlin_noise.nA aestd.math.var += #aestd.perlin_noise.nA.z aestd.math.var

scoreboard players operation #aestd.perlin_noise.nB.x aestd.math.var = #aestd.perlin_noise.sx aestd.math.var
scoreboard players remove #aestd.perlin_noise.nB.x aestd.math.var 1000
scoreboard players operation #aestd.perlin_noise.nB.x aestd.math.var *= #aestd.perlin_noise.B.x aestd.math.var
scoreboard players operation #aestd.perlin_noise.nB.z aestd.math.var = #aestd.perlin_noise.sz aestd.math.var
scoreboard players operation #aestd.perlin_noise.nB.z aestd.math.var *= #aestd.perlin_noise.B.z aestd.math.var
scoreboard players operation #aestd.perlin_noise.nB aestd.math.var = #aestd.perlin_noise.nB.x aestd.math.var
scoreboard players operation #aestd.perlin_noise.nB aestd.math.var += #aestd.perlin_noise.nB.z aestd.math.var

scoreboard players operation #aestd.perlin_noise.nC.x aestd.math.var = #aestd.perlin_noise.sx aestd.math.var
scoreboard players operation #aestd.perlin_noise.nC.x aestd.math.var *= #aestd.perlin_noise.C.x aestd.math.var
scoreboard players operation #aestd.perlin_noise.nC.z aestd.math.var = #aestd.perlin_noise.sz aestd.math.var
scoreboard players remove #aestd.perlin_noise.nC.z aestd.math.var 1000
scoreboard players operation #aestd.perlin_noise.nC.z aestd.math.var *= #aestd.perlin_noise.C.z aestd.math.var
scoreboard players operation #aestd.perlin_noise.nC aestd.math.var = #aestd.perlin_noise.nC.x aestd.math.var
scoreboard players operation #aestd.perlin_noise.nC aestd.math.var += #aestd.perlin_noise.nC.z aestd.math.var

scoreboard players operation #aestd.perlin_noise.nD.x aestd.math.var = #aestd.perlin_noise.sx aestd.math.var
scoreboard players remove #aestd.perlin_noise.nD.x aestd.math.var 1000
scoreboard players operation #aestd.perlin_noise.nD.x aestd.math.var *= #aestd.perlin_noise.D.x aestd.math.var
scoreboard players operation #aestd.perlin_noise.nD.z aestd.math.var = #aestd.perlin_noise.sz aestd.math.var
scoreboard players remove #aestd.perlin_noise.nD.z aestd.math.var 1000
scoreboard players operation #aestd.perlin_noise.nD.z aestd.math.var *= #aestd.perlin_noise.D.z aestd.math.var
scoreboard players operation #aestd.perlin_noise.nD aestd.math.var = #aestd.perlin_noise.nD.x aestd.math.var
scoreboard players operation #aestd.perlin_noise.nD aestd.math.var += #aestd.perlin_noise.nD.z aestd.math.var
