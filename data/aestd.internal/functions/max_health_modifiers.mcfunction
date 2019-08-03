# Returns 1 if the player doesn't have any maxHealth modifier on their equipment and no permanent maxHealth attribute except AESTD's
# Returns 0 if the player holds or wears any item with a maxHealth modifier or has any permanent maxHealth attribute that's not from AESTD

scoreboard players set #aestd.proceed aestd.var 0
execute unless data entity @s Inventory[{Slot:100b}].tag.AttributeModifiers[{AttributeName:"generic.maxHealth"}] unless data entity @s Inventory[{Slot:101b}].tag.AttributeModifiers[{AttributeName:"generic.maxHealth"}] unless data entity @s Inventory[{Slot:102b}].tag.AttributeModifiers[{AttributeName:"generic.maxHealth"}] unless data entity @s Inventory[{Slot:103b}].tag.AttributeModifiers[{AttributeName:"generic.maxHealth"}] unless data entity @s Inventory[{Slot:-106b}].tag.AttributeModifiers[{AttributeName:"generic.maxHealth"}] unless data entity @s SelectedItem.tag.AttributeModifiers[{AttributeName:"generic.maxHealth"}] run tag @s add aestd.no_maxhealth_equipment
execute if entity @s[tag=aestd.no_maxhealth_equipment] store result score #aestd.proceed aestd.var unless data entity @s Attributes[{AttributeName:"generic.maxHealth"}].Modifiers
execute if entity @s[tag=aestd.no_maxhealth_equipment] if score #aestd.proceed aestd.var matches 0 store result score #aestd.proceed aestd.var if data entity @s Attributes[{AttributeName:"generic.maxHealth"}].Modifiers[{UUIDLeast:105192004L}] unless data entity @s Attributes[{AttributeName:"generic.maxHealth"}].Modifiers[1]
tag @s remove aestd.no_maxhealth_equipment
