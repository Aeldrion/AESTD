# Generated for version 1.16.2
scoreboard players set #block_found aestd 0
execute if score #block_found aestd matches 0 store success score #block_found aestd if block ~ ~ ~ #aestd.private:block_id_tree/1.16.2_0 run function aestd.private:lib1/block/get_block_num_id/1.16.2_0
execute if score #block_found aestd matches 0 store success score #block_found aestd if block ~ ~ ~ #aestd.private:block_id_tree/1.16.2_1 run function aestd.private:lib1/block/get_block_num_id/1.16.2_1
execute if score #block_found aestd matches 0 store success score #block_found aestd if block ~ ~ ~ #aestd.private:block_id_tree/1.16.2_2 run function aestd.private:lib1/block/get_block_num_id/1.16.2_2
execute if score #block_found aestd matches 0 store success score #block_found aestd if block ~ ~ ~ #aestd.private:block_id_tree/1.16.2_3 run function aestd.private:lib1/block/get_block_num_id/1.16.2_3
execute if score #block_found aestd matches 0 store success score #block_found aestd if block ~ ~ ~ #aestd.private:block_id_tree/1.16.2_4 run function aestd.private:lib1/block/get_block_num_id/1.16.2_4
execute if score #block_found aestd matches 0 store success score #block_found aestd if block ~ ~ ~ #aestd.private:block_id_tree/1.16.2_5 run function aestd.private:lib1/block/get_block_num_id/1.16.2_5
execute if score #block_found aestd matches 0 store success score #block_found aestd if block ~ ~ ~ #aestd.private:block_id_tree/1.16.2_6 run function aestd.private:lib1/block/get_block_num_id/1.16.2_6
execute if score #block_found aestd matches 0 store success score #block_found aestd if block ~ ~ ~ #aestd.private:block_id_tree/1.16.2_7 run function aestd.private:lib1/block/get_block_num_id/1.16.2_7
execute if score #block_found aestd matches 0 run scoreboard players set $block.id aestd -1