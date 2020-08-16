execute if block ~ ~ ~ #aestd.private:block_states/attachment[attachment=ceiling] run data modify storage aestd:out BlockState.Properties merge value {attachment: "ceiling"}
execute if block ~ ~ ~ #aestd.private:block_states/attachment[attachment=double_wall] run data modify storage aestd:out BlockState.Properties merge value {attachment: "double_wall"}
execute if block ~ ~ ~ #aestd.private:block_states/attachment[attachment=floor] run data modify storage aestd:out BlockState.Properties merge value {attachment: "floor"}
execute if block ~ ~ ~ #aestd.private:block_states/attachment[attachment=single_wall] run data modify storage aestd:out BlockState.Properties merge value {attachment: "single_wall"}
