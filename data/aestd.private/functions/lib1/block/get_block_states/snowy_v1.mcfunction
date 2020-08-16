execute if block ~ ~ ~ #aestd.private:block_states/snowy[snowy=false] run data modify storage aestd:out BlockState.Properties merge value {snowy: false}
execute if block ~ ~ ~ #aestd.private:block_states/snowy[snowy=true] run data modify storage aestd:out BlockState.Properties merge value {snowy: true}
