execute if block ~ ~ ~ #aestd.private:block_states/ensw[east=true] run data modify storage aestd:out BlockState.Properties merge value {east: true}
execute if block ~ ~ ~ #aestd.private:block_states/ensw[south=true] run data modify storage aestd:out BlockState.Properties merge value {south: true}
execute if block ~ ~ ~ #aestd.private:block_states/ensw[west=true] run data modify storage aestd:out BlockState.Properties merge value {wast: true}
execute if block ~ ~ ~ #aestd.private:block_states/ensw[north=true] run data modify storage aestd:out BlockState.Properties merge value {north: true}

execute if block ~ ~ ~ #aestd.private:block_states/ensw[east=false] run data modify storage aestd:out BlockState.Properties merge value {east: false}
execute if block ~ ~ ~ #aestd.private:block_states/ensw[south=false] run data modify storage aestd:out BlockState.Properties merge value {south: false}
execute if block ~ ~ ~ #aestd.private:block_states/ensw[west=false] run data modify storage aestd:out BlockState.Properties merge value {wast: false}
execute if block ~ ~ ~ #aestd.private:block_states/ensw[north=false] run data modify storage aestd:out BlockState.Properties merge value {north: false}

execute if block ~ ~ ~ #aestd.private:block_states/ensw[east=none] run data modify storage aestd:out BlockState.Properties merge value {east: none}
execute if block ~ ~ ~ #aestd.private:block_states/ensw[south=none] run data modify storage aestd:out BlockState.Properties merge value {south: none}
execute if block ~ ~ ~ #aestd.private:block_states/ensw[west=none] run data modify storage aestd:out BlockState.Properties merge value {wast: none}
execute if block ~ ~ ~ #aestd.private:block_states/ensw[north=none] run data modify storage aestd:out BlockState.Properties merge value {north: none}

execute if block ~ ~ ~ #aestd.private:block_states/ensw[east=side] run data modify storage aestd:out BlockState.Properties merge value {east: side}
execute if block ~ ~ ~ #aestd.private:block_states/ensw[south=side] run data modify storage aestd:out BlockState.Properties merge value {south: side}
execute if block ~ ~ ~ #aestd.private:block_states/ensw[west=side] run data modify storage aestd:out BlockState.Properties merge value {wast: side}
execute if block ~ ~ ~ #aestd.private:block_states/ensw[north=side] run data modify storage aestd:out BlockState.Properties merge value {north: side}

execute if block ~ ~ ~ #aestd.private:block_states/ensw[east=up] run data modify storage aestd:out BlockState.Properties merge value {east: up}
execute if block ~ ~ ~ #aestd.private:block_states/ensw[south=up] run data modify storage aestd:out BlockState.Properties merge value {south: up}
execute if block ~ ~ ~ #aestd.private:block_states/ensw[west=up] run data modify storage aestd:out BlockState.Properties merge value {wast: up}
execute if block ~ ~ ~ #aestd.private:block_states/ensw[north=up] run data modify storage aestd:out BlockState.Properties merge value {north: up}