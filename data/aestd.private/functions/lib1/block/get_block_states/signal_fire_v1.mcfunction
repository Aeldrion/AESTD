execute if block ~ ~ ~ #aestd.private:block_states/signal_fire[signal_fire=false] run data modify storage aestd:out BlockState.Properties merge value {signal_fire: false}
execute if block ~ ~ ~ #aestd.private:block_states/signal_fire[signal_fire=true] run data modify storage aestd:out BlockState.Properties merge value {signal_fire: true}
