execute if block ~ ~ ~ #aestd.private:block_states/disarmed[disarmed=false] run data modify storage aestd:out BlockState.Properties merge value {disarmed: false}
execute if block ~ ~ ~ #aestd.private:block_states/disarmed[disarmed=true] run data modify storage aestd:out BlockState.Properties merge value {disarmed: true}
