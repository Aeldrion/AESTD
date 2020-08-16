execute if block ~ ~ ~ #aestd.private:block_states/drag[drag=false] run data modify storage aestd:out BlockState.Properties merge value {drag: false}
execute if block ~ ~ ~ #aestd.private:block_states/drag[drag=true] run data modify storage aestd:out BlockState.Properties merge value {drag: true}
