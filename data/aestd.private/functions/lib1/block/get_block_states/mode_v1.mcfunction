execute if block ~ ~ ~ #aestd.private:block_states/mode[mode=compare] run data modify storage aestd:out BlockState.Properties merge value {mode: "compare"}
execute if block ~ ~ ~ #aestd.private:block_states/mode[mode=subtract] run data modify storage aestd:out BlockState.Properties merge value {mode: "subtract"}
execute if block ~ ~ ~ #aestd.private:block_states/mode[mode=corner] run data modify storage aestd:out BlockState.Properties merge value {mode: "corner"}
execute if block ~ ~ ~ #aestd.private:block_states/mode[mode=data] run data modify storage aestd:out BlockState.Properties merge value {mode: "data"}
execute if block ~ ~ ~ #aestd.private:block_states/mode[mode=load] run data modify storage aestd:out BlockState.Properties merge value {mode: "load"}
execute if block ~ ~ ~ #aestd.private:block_states/mode[mode=save] run data modify storage aestd:out BlockState.Properties merge value {mode: "save"}
