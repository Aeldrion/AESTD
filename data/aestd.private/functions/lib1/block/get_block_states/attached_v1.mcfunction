execute if block ~ ~ ~ #aestd.private:block_states/attached[attached=false] run data modify storage aestd:out BlockState.Properties merge value {attached: false}
execute if block ~ ~ ~ #aestd.private:block_states/attached[attached=true] run data modify storage aestd:out BlockState.Properties merge value {attached: true}
