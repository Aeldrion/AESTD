# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

execute if block ~ ~ ~ #aestd.private:block_id_tree/quarter_1 run function aestd.private:lib1/block/get_block_id/tree1_1941
execute if block ~ ~ ~ #aestd.private:block_id_tree/quarter_2 run function aestd.private:lib1/block/get_block_id/tree2_1941
execute if block ~ ~ ~ #aestd.private:block_id_tree/quarter_3 run function aestd.private:lib1/block/get_block_id/tree3_1941
execute if block ~ ~ ~ #aestd.private:block_id_tree/quarter_4 run function aestd.private:lib1/block/get_block_id/tree4_1941
execute unless block ~ ~ ~ #aestd.private:block_id_tree/quarter_1 unless block ~ ~ ~ #aestd.private:block_id_tree/quarter_2 unless block ~ ~ ~ #aestd.private:block_id_tree/quarter_3 unless block ~ ~ ~ #aestd.private:block_id_tree/quarter_4 run scoreboard players set @s aestd.block.id -1

# Note: minimum optimization has been done with this tree but it should go deeper because two hundred commands for getting a block's ID is a lot
