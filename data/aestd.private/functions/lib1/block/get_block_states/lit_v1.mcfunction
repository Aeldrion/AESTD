execute if block ~ ~ ~ #aestd.private:block_states/lit[lit=false] run data modify storage aestd:out BlockState.Properties merge value {lit: false}
execute if block ~ ~ ~ #aestd.private:block_states/lit[lit=true] run data modify storage aestd:out BlockState.Properties merge value {lit: true}
