execute if block ~ ~ ~ #aestd.private:block_states/has_book[has_book=false] run data modify storage aestd:out BlockState.Properties merge value {has_book: false}
execute if block ~ ~ ~ #aestd.private:block_states/has_book[has_book=true] run data modify storage aestd:out BlockState.Properties merge value {has_book: true}
