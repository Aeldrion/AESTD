# Figure how much maximum health should be reduced
execute store result score #max_health aestd run attribute @s minecraft:generic.max_health get 100
scoreboard players operation #max_health_reduction_amount aestd = #max_health aestd
scoreboard players operation #max_health_reduction_amount aestd -= #health aestd

# Reduce maximum health with binary increments
execute if score #max_health_reduction_amount aestd matches 65536.. run attribute @s minecraft:generic.max_health modifier add ae57d-e5cd-4a7d-8c64-05fa7aecf0eb "AESTD damage modifier -655.36HP" -655.36 add
execute if score #max_health_reduction_amount aestd matches 65536.. run scoreboard players remove #max_health_reduction_amount aestd 65536
execute if score #max_health_reduction_amount aestd matches 32768.. run attribute @s minecraft:generic.max_health modifier add ae57d-975b-4735-81ff-93f96ed9f091 "AESTD damage modifier -327.68HP" -327.68 add
execute if score #max_health_reduction_amount aestd matches 32768.. run scoreboard players remove #max_health_reduction_amount aestd 32768
execute if score #max_health_reduction_amount aestd matches 16384.. run attribute @s minecraft:generic.max_health modifier add ae57d-bf39-4001-b5ad-445ce2d5bf62 "AESTD damage modifier -163.84HP" -163.84 add
execute if score #max_health_reduction_amount aestd matches 16384.. run scoreboard players remove #max_health_reduction_amount aestd 16384
execute if score #max_health_reduction_amount aestd matches 8192.. run attribute @s minecraft:generic.max_health modifier add ae57d-d437-4fae-83bd-7c87ae2a6f3f "AESTD damage modifier -81.92HP" -81.92 add
execute if score #max_health_reduction_amount aestd matches 8192.. run scoreboard players remove #max_health_reduction_amount aestd 8192
execute if score #max_health_reduction_amount aestd matches 4096.. run attribute @s minecraft:generic.max_health modifier add ae57d-e61c-4084-8daa-8bc90352b19e "AESTD damage modifier -40.96HP" -40.96 add
execute if score #max_health_reduction_amount aestd matches 4096.. run scoreboard players remove #max_health_reduction_amount aestd 4096
execute if score #max_health_reduction_amount aestd matches 2048.. run attribute @s minecraft:generic.max_health modifier add ae57d-d705-46f8-bc0f-a51915e784f5 "AESTD damage modifier -20.48HP" -20.48 add
execute if score #max_health_reduction_amount aestd matches 2048.. run scoreboard players remove #max_health_reduction_amount aestd 2048
execute if score #max_health_reduction_amount aestd matches 1024.. run attribute @s minecraft:generic.max_health modifier add ae57d-5797-4f97-ab9c-05ed603c1ee2 "AESTD damage modifier -10.24HP" -10.24 add
execute if score #max_health_reduction_amount aestd matches 1024.. run scoreboard players remove #max_health_reduction_amount aestd 1024
execute if score #max_health_reduction_amount aestd matches 512.. run attribute @s minecraft:generic.max_health modifier add ae57d-094d-4d12-8599-e17a20764107 "AESTD damage modifier -5.12HP" -5.12 add
execute if score #max_health_reduction_amount aestd matches 512.. run scoreboard players remove #max_health_reduction_amount aestd 512
execute if score #max_health_reduction_amount aestd matches 256.. run attribute @s minecraft:generic.max_health modifier add ae57d-4178-4a83-93b8-27c0c8c45df7 "AESTD damage modifier -2.56HP" -2.56 add
execute if score #max_health_reduction_amount aestd matches 256.. run scoreboard players remove #max_health_reduction_amount aestd 256
execute if score #max_health_reduction_amount aestd matches 128.. run attribute @s minecraft:generic.max_health modifier add ae57d-7558-4a02-b42b-4058d4f0104e "AESTD damage modifier -1.28HP" -1.28 add
execute if score #max_health_reduction_amount aestd matches 128.. run scoreboard players remove #max_health_reduction_amount aestd 128
execute if score #max_health_reduction_amount aestd matches 64.. run attribute @s minecraft:generic.max_health modifier add ae57d-8348-4dc7-9a00-1018912f5604 "AESTD damage modifier -0.64HP" -0.64 add
execute if score #max_health_reduction_amount aestd matches 64.. run scoreboard players remove #max_health_reduction_amount aestd 64
execute if score #max_health_reduction_amount aestd matches 32.. run attribute @s minecraft:generic.max_health modifier add ae57d-ab36-4948-ba90-0b608ad13bf1 "AESTD damage modifier -0.32HP" -0.32 add
execute if score #max_health_reduction_amount aestd matches 32.. run scoreboard players remove #max_health_reduction_amount aestd 32
execute if score #max_health_reduction_amount aestd matches 16.. run attribute @s minecraft:generic.max_health modifier add ae57d-8a81-4ef2-9657-f4ae3a6b8528 "AESTD damage modifier -0.16HP" -0.16 add
execute if score #max_health_reduction_amount aestd matches 16.. run scoreboard players remove #max_health_reduction_amount aestd 16
execute if score #max_health_reduction_amount aestd matches 8.. run attribute @s minecraft:generic.max_health modifier add ae57d-433a-450e-ba8a-f2f42507b38c "AESTD damage modifier -0.08HP" -0.08 add
execute if score #max_health_reduction_amount aestd matches 8.. run scoreboard players remove #max_health_reduction_amount aestd 8
execute if score #max_health_reduction_amount aestd matches 4.. run attribute @s minecraft:generic.max_health modifier add ae57d-b4a6-4204-81e4-8e3cc12cbb52 "AESTD damage modifier -0.04HP" -0.04 add
execute if score #max_health_reduction_amount aestd matches 4.. run scoreboard players remove #max_health_reduction_amount aestd 4
execute if score #max_health_reduction_amount aestd matches 2.. run attribute @s minecraft:generic.max_health modifier add ae57d-abc0-4f76-8c7b-11e8f465bc64 "AESTD damage modifier -0.02HP" -0.02 add
execute if score #max_health_reduction_amount aestd matches 2.. run scoreboard players remove #max_health_reduction_amount aestd 2
execute if score #max_health_reduction_amount aestd matches 1.. run attribute @s minecraft:generic.max_health modifier add ae57d-16cf-4a8f-91ea-851911cbfab8 "AESTD damage modifier -0.01HP" -0.01 add

# Adjust health to max health
effect give @s minecraft:health_boost 1 0
effect clear @s minecraft:health_boost

# Reset max health
attribute @s minecraft:generic.max_health modifier remove ae57d-16cf-4a8f-91ea-851911cbfab8
attribute @s minecraft:generic.max_health modifier remove ae57d-abc0-4f76-8c7b-11e8f465bc64
attribute @s minecraft:generic.max_health modifier remove ae57d-b4a6-4204-81e4-8e3cc12cbb52
attribute @s minecraft:generic.max_health modifier remove ae57d-433a-450e-ba8a-f2f42507b38c
attribute @s minecraft:generic.max_health modifier remove ae57d-8a81-4ef2-9657-f4ae3a6b8528
attribute @s minecraft:generic.max_health modifier remove ae57d-ab36-4948-ba90-0b608ad13bf1
attribute @s minecraft:generic.max_health modifier remove ae57d-8348-4dc7-9a00-1018912f5604
attribute @s minecraft:generic.max_health modifier remove ae57d-7558-4a02-b42b-4058d4f0104e
attribute @s minecraft:generic.max_health modifier remove ae57d-4178-4a83-93b8-27c0c8c45df7
attribute @s minecraft:generic.max_health modifier remove ae57d-094d-4d12-8599-e17a20764107
attribute @s minecraft:generic.max_health modifier remove ae57d-5797-4f97-ab9c-05ed603c1ee2
attribute @s minecraft:generic.max_health modifier remove ae57d-d705-46f8-bc0f-a51915e784f5
attribute @s minecraft:generic.max_health modifier remove ae57d-e61c-4084-8daa-8bc90352b19e
attribute @s minecraft:generic.max_health modifier remove ae57d-d437-4fae-83bd-7c87ae2a6f3f
attribute @s minecraft:generic.max_health modifier remove ae57d-bf39-4001-b5ad-445ce2d5bf62
attribute @s minecraft:generic.max_health modifier remove ae57d-975b-4735-81ff-93f96ed9f091
attribute @s minecraft:generic.max_health modifier remove ae57d-e5cd-4a7d-8c64-05fa7aecf0eb

# Damage effect
effect give @s minecraft:instant_damage 1 30