execute if block ~ ~ ~ #aestd.private:block_states/powered[powered=false] run data modify storage aestd:out BlockState.Properties merge value {powered: false}
execute if block ~ ~ ~ #aestd.private:block_states/powered[powered=true] run data modify storage aestd:out BlockState.Properties merge value {powered: true}
