execute if block ~ ~ ~ #aestd.private:block_states/short[short=false] run data modify storage aestd:out BlockState.Properties merge value {short: false}
execute if block ~ ~ ~ #aestd.private:block_states/short[short=true] run data modify storage aestd:out BlockState.Properties merge value {short: true}
