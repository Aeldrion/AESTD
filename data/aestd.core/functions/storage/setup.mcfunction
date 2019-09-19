# Author: Aeldrion
# Version: 19w38b
# Project: AESTD

# Sets up storages for AESTD

data merge storage aestd:core {aestd_version: "v0.3-dev", minecraft_version: "1.15", storage_format: 0}
data merge storage aestd:data {UUID: {Least: 0L, Most: 0L, String: ""}, Item: {}, Inventory: [], PlayerName: ""}
data merge storage aestd:input {String: "", nbt: {}}
