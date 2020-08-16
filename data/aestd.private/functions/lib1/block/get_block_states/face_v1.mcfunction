execute if block ~ ~ ~ #aestd.private:block_states/face[face=ceiling] run data modify storage aestd:out BlockState.Properties merge value {face: "ceiling"}
execute if block ~ ~ ~ #aestd.private:block_states/face[face=floor] run data modify storage aestd:out BlockState.Properties merge value {face: "floor"}
execute if block ~ ~ ~ #aestd.private:block_states/face[face=wall] run data modify storage aestd:out BlockState.Properties merge value {face: "wall"}
