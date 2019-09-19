# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Checks if storages have been setup and are up-to-date

execute store result score #aestd.storage_created aestd.var if data storage aestd:core version

execute if score #aestd.storage_created aestd.var matches 0 run function aestd.core:storage/setup
execute if score #aestd.storage_created aestd.var matches 1 run function aestd.core:storage/check_version
