execute if block ~ ~ ~ #aestd.private:block_states/damage[damage=broken] run data modify storage aestd:out BlockState.Properties merge value {damage: "broken"}
execute if block ~ ~ ~ #aestd.private:block_states/damage[damage=slightly_damaged] run data modify storage aestd:out BlockState.Properties merge value {damage: "slightly_damaged"}
execute if block ~ ~ ~ #aestd.private:block_states/damage[damage=undamaged] run data modify storage aestd:out BlockState.Properties merge value {damage: "undamaged"}
execute if block ~ ~ ~ #aestd.private:block_states/damage[damage=very_damaged] run data modify storage aestd:out BlockState.Properties merge value {damage: "very_damaged"}
