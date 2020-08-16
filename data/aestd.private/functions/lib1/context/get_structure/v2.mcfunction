# Call loot table and insert into shulker box
replaceitem block -30000000 0 7777 container.0 minecraft:air
execute store result score $structure aestd run loot insert -30000000 0 7777 loot aestd.private:structure
