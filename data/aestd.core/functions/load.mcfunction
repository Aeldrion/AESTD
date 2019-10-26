# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

# Sets up storage, scoreboard and save chunk

scoreboard objectives add aestd.version dummy
scoreboard players reset * aestd.version
function #aestd.core:get_version

function #aestd.core:setup_scoreboard
function #aestd.core:setup_storage
function #aestd.core:setup_save_chunk
