execute if block ~ ~ ~ #aestd.private:block_states/unstable[unstable=false] run data modify storage aestd:out BlockState.Properties merge value {unstable: false}
execute if block ~ ~ ~ #aestd.private:block_states/unstable[unstable=true] run data modify storage aestd:out BlockState.Properties merge value {unstable: true}
