execute if block ~ ~ ~ #aestd.private:block_states/enabled[enabled=false] run data modify storage aestd:out BlockState.Properties merge value {enabled: false}
execute if block ~ ~ ~ #aestd.private:block_states/enabled[enabled=true] run data modify storage aestd:out BlockState.Properties merge value {enabled: true}
