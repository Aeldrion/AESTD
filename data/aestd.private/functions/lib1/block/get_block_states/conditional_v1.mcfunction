execute if block ~ ~ ~ #aestd.private:block_states/conditional[conditional=false] run data modify storage aestd:out BlockState.Properties merge value {conditional: false}
execute if block ~ ~ ~ #aestd.private:block_states/conditional[conditional=true] run data modify storage aestd:out BlockState.Properties merge value {conditional: true}
