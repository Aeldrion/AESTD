execute store result score #list_length aestd run data get storage aestd:input List
data modify storage aestd:data List set from storage aestd:input List

execute if score $in.index aestd matches ..-1 run function aestd.private:lib1/data/list/set/negative_index_v1
execute if score $in.index aestd matches 0.. run function aestd.private:lib1/data/list/set/positive_index