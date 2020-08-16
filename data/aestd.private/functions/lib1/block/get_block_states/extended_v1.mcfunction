execute if block ~ ~ ~ #aestd.private:block_states/extended[extended=false] run data modify storage aestd:out BlockState.Properties merge value {extended: false}
execute if block ~ ~ ~ #aestd.private:block_states/extended[extended=true] run data modify storage aestd:out BlockState.Properties merge value {extended: true}
