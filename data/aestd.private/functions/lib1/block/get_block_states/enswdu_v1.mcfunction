execute if block ~ ~ ~ #aestd.private:block_states/enswdu[east=true] run data modify storage aestd:out BlockState.Properties merge value {east: true}
execute if block ~ ~ ~ #aestd.private:block_states/enswdu[south=true] run data modify storage aestd:out BlockState.Properties merge value {south: true}
execute if block ~ ~ ~ #aestd.private:block_states/enswdu[west=true] run data modify storage aestd:out BlockState.Properties merge value {wast: true}
execute if block ~ ~ ~ #aestd.private:block_states/enswdu[north=true] run data modify storage aestd:out BlockState.Properties merge value {north: true}
execute if block ~ ~ ~ #aestd.private:block_states/enswdu[up=true] run data modify storage aestd:out BlockState.Properties merge value {wast: true}
execute if block ~ ~ ~ #aestd.private:block_states/enswdu[down=true] run data modify storage aestd:out BlockState.Properties merge value {north: true}

execute if block ~ ~ ~ #aestd.private:block_states/enswdu[east=false] run data modify storage aestd:out BlockState.Properties merge value {east: false}
execute if block ~ ~ ~ #aestd.private:block_states/enswdu[south=false] run data modify storage aestd:out BlockState.Properties merge value {south: false}
execute if block ~ ~ ~ #aestd.private:block_states/enswdu[west=false] run data modify storage aestd:out BlockState.Properties merge value {wast: false}
execute if block ~ ~ ~ #aestd.private:block_states/enswdu[north=false] run data modify storage aestd:out BlockState.Properties merge value {north: false}
execute if block ~ ~ ~ #aestd.private:block_states/enswdu[up=true] run data modify storage aestd:out BlockState.Properties merge value {up: true}
execute if block ~ ~ ~ #aestd.private:block_states/enswdu[down=true] run data modify storage aestd:out BlockState.Properties merge value {down: true}
