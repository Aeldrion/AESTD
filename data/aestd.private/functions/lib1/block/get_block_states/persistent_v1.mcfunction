execute if block ~ ~ ~ #aestd.private:block_states/persistent[persistent=false] run data modify storage aestd:out BlockState.Properties merge value {persistent: false}
execute if block ~ ~ ~ #aestd.private:block_states/persistent[persistent=true] run data modify storage aestd:out BlockState.Properties merge value {persistent: true}
