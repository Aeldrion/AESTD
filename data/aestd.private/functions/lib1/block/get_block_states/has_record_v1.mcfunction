execute if block ~ ~ ~ #aestd.private:block_states/has_record[has_record=false] run data modify storage aestd:out BlockState.Properties merge value {has_record: false}
execute if block ~ ~ ~ #aestd.private:block_states/has_record[has_record=true] run data modify storage aestd:out BlockState.Properties merge value {has_record: true}
