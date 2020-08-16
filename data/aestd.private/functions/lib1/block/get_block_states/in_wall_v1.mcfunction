execute if block ~ ~ ~ #aestd.private:block_states/in_wall[in_wall=false] run data modify storage aestd:out BlockState.Properties merge value {in_wall: false}
execute if block ~ ~ ~ #aestd.private:block_states/in_wall[in_wall=true] run data modify storage aestd:out BlockState.Properties merge value {in_wall: true}
