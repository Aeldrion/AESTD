execute if block ~ ~ ~ #aestd.private:block_states/bottom[bottom=false] run data modify storage aestd:out BlockState.Properties merge value {bottom: false}
execute if block ~ ~ ~ #aestd.private:block_states/bottom[bottom=true] run data modify storage aestd:out BlockState.Properties merge value {bottom: true}
