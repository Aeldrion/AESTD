execute if block ~ ~ ~ #aestd.private:block_states/hanging[hanging=false] run data modify storage aestd:out BlockState.Properties merge value {hanging: false}
execute if block ~ ~ ~ #aestd.private:block_states/hanging[hanging=true] run data modify storage aestd:out BlockState.Properties merge value {hanging: true}
