execute if block ~ ~ ~ #aestd.private:block_states/triggered[triggered=false] run data modify storage aestd:out BlockState.Properties merge value {triggered: false}
execute if block ~ ~ ~ #aestd.private:block_states/triggered[triggered=true] run data modify storage aestd:out BlockState.Properties merge value {triggered: true}
