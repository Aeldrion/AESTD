execute if block ~ ~ ~ #aestd.private:block_states/eye[eye=false] run data modify storage aestd:out BlockState.Properties merge value {eye: false}
execute if block ~ ~ ~ #aestd.private:block_states/eye[eye=true] run data modify storage aestd:out BlockState.Properties merge value {eye: true}
