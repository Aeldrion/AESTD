execute if block ~ ~ ~ #aestd.private:block_states/inverted[inverted=false] run data modify storage aestd:out BlockState.Properties merge value {inverted: false}
execute if block ~ ~ ~ #aestd.private:block_states/inverted[inverted=true] run data modify storage aestd:out BlockState.Properties merge value {inverted: true}
