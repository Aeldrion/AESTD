execute if block ~ ~ ~ #aestd.private:block_states/open[open=false] run data modify storage aestd:out BlockState.Properties merge value {open: false}
execute if block ~ ~ ~ #aestd.private:block_states/open[open=true] run data modify storage aestd:out BlockState.Properties merge value {open: true}
