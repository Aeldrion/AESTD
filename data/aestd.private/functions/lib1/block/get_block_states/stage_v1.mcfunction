execute if block ~ ~ ~ #aestd.private:block_states/stage[stage=0] run data modify storage aestd:out BlockState.Properties merge value {stage: 0}
execute if block ~ ~ ~ #aestd.private:block_states/stage[stage=1] run data modify storage aestd:out BlockState.Properties merge value {stage: 1}
