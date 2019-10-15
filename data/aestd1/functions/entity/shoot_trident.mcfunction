# Author: Aeldrion
# Version: 19w41a
# Project: AESTD v1.0

# Shoots a trident as the executing entity at context position following context rotation
# The last shot trident gets the aestd.trident.last_shot tag
# If the executing entity has the aestd.trident.from_inventory tag:
# - If it is not holding a trident: No trident will spawn
# - If there is a trident in the entity's mainhand, or otherwise in its offhand: This trident will be selected (preserves name, enchantments, ...)
# - If it is a survival/adventure mode player: The trident will be removed from the player's inventory, but can be picked back up
#											   The item will take damage, taking into account Unbreaking enchantments

function #aestd.private:lib1/entity/shoot_trident