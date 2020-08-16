execute if block ~ ~ ~ #aestd.private:block_states/locked[locked=false] run data modify storage aestd:out BlockState.Properties merge value {locked: false}
execute if block ~ ~ ~ #aestd.private:block_states/locked[locked=true] run data modify storage aestd:out BlockState.Properties merge value {locked: true}
