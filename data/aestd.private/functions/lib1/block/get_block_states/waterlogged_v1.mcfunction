execute if block ~ ~ ~ #aestd.private:block_states/waterlogged[waterlogged=false] run data modify storage aestd:out BlockState.Properties merge value {waterlogged: false}
execute if block ~ ~ ~ #aestd.private:block_states/waterlogged[waterlogged=true] run data modify storage aestd:out BlockState.Properties merge value {waterlogged: true}
