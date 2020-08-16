# Call loot table and insert into chest
replaceitem block -30000000 0 7777 container.0 minecraft:air
execute store result score $biome aestd run loot insert -30000000 0 7777 loot aestd.private:biome