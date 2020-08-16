execute if block ~ ~ ~ #aestd.private:block_states/occupied[occupied=false] run data modify storage aestd:out BlockState.Properties merge value {occupied: false}
execute if block ~ ~ ~ #aestd.private:block_states/occupied[occupied=true] run data modify storage aestd:out BlockState.Properties merge value {occupied: true}
