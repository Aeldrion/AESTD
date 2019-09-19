# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Sets up storage, scoreboard and save chunk

scoreboard players set #aestd.version aestd.var 0

function aestd.core:load/setup_scoreboard
function aestd.core:load/check_storage
function aestd.core:load/check_save_chunk

function aestd.internal:tags/run_second_clock
