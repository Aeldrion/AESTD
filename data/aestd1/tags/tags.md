# AESTD tag library
# v1.1-alpha for 20w15a

## Entity type flags

- `aligned_to_block_grid`
Entities that snap to the block grid unless they are a passenger of another entity. Does not include armour stands, which can be summoned at any position or moved outside of the block grid with pistons/water.

- `all`
All entities. Can be used with mods to only select vanilla entities.

- `arthropods`
Mobs in this tag take more damage when hurt with an item with the Bane of Arthropods enchantment.

- `bosses`
Mobs that are unaffected by potion effects from the effect command. Does not include elder guardians.

- `breedable`
Mobs that can be bred by players to create babies of the same type. Does not include villagers.

- `can_grief`
Mobs that can affect the blocks in the world when mobGriefing is set to true.

- `display_armor`
Entities that have armour slots which can display armour models.

- `end`
Mobs that can spawn in the end.

- `flying`
Mobs that are able to fly or to float, not including chickens.

- `hostile`
Mobs that will attack players in survival mode if possible.

- `living_base`
Entities that extend the LivingBase entity class: mobs, players and armour stands.

- `mobs`
All mobs, including boss mobs.

- `nether`
Mobs that can spawn in the nether, including mobs that are not only found in the nether (skeletons and endermen).

- `neutral`
Mobs that can but will not always attack players, including mobs that retaliate against player attacks or whose anger behaviour depends on age such as polar bears.

- `partial_invisibility`
Mobs that display part of their model when invisible, not including those who can only display armour or hand items such as zombies.

- `passive`
Mobs that will not attack players no matter what.

- `projectiles`
Moving entities that have motion or direction and can be cast by players or mobs, not exclusive to those that can deal damage to other mobs. Not including primed TNT or falling blocks.

- `rideable`
Entities that can be mounted and directed by players, including mobs that can be ridden using items (pigs and striders) and non-mob vehicles (boats and minecarts).

- `rideable_mobs`
Mobs that can be mounted and directed by players, including mobs that can be ridden using items (pigs and striders) but not non-mob vehicles.

- `swimming`
Mobs that are able to swim, not including those that can only float.

- `undead`
Mobs that are not attacked by withers, that are healed by the instant damage effect and hurt by the instant health effect, and that take extra damage when hurt with an item with the Smite enchantment.

- `vehicles`
Non-mob entities that can be mounted and directed by players.

- `zombies`
Undead mobs that can attack and convert villagers. Not including giants, zoglins and zombie piglins.

## Block tags

- `air`
Air blocks: air, cave air and void air.

- `all`
All blocks, including air and liquids. Can be used to only select vanilla blocks in fill or clone commands when mods are used.

- `all_but_air`
All blocks, excluding air, cave air and void air.

- `all_corals`
Coral fans and coral plants, dead or not. Does not include coral blocks, to be consistent with the #minecraft:corals tag which includes non-dead coral fans and plants.

- `block_entities`
Block entities, not including moving piston heads. 

- `can_emit_light`
Blocks that can emit light, including blocks that always do (eg. glowstone) and blocks that have off and on states (eg. furnace)

- `command_blocks`

- `concrete`
Concrete blocks, does not including concrete powder.

- `concrete_powder`

- `contact_damage`
Blocks that deal contact damage to players who touch them. Does not include sweet berry bush which does not deal damage to players standing still.

- `coral_fans`
Does not include dead coral fans.

- `cubic`
Blocks with a 1x1x1 collision box.

- `dead_coral_blocks`
Does not include dead coral, dead coral plants and dead coral fans

- `dead_coral_fans`

- `dead_coral_plants`

- `dead_corals`
Comprises of dead coral fans and dead coral plants, for consistency with the #minecraft:corals block tag.

- `double_blocks`
Blocks whose collision box extends on the space of two blocks (eg. beds, doors). Does not include banners, whose collision box is contained in a single block's space.

- `emit_light`
Blocks that always emit light; does not include blocks with an off state such as furnaces.

- `end_blocks`
Blocks that can be found in the end, including in end cities and end ships.

- `end_stone_brick_blocks`
Blocks derived from end stone bricks

- `falling_blocks`
Blocks that can fall when placed or updated, including scaffolding and excluding TNT.

- `fence_gates`

- `flammable_blocks`
Blocks that can be consumed by fire. Includes TNT.

- `flammable_fence_gates`
Fence gates made from overworld planks

- `flammable_fences`
Fences made from overworld planks, excluding fence gates.

- `flammable_planks`
Overworld wooden planks

- `flammable_signs`
Signs made from overworld planks

- `flammable_slabs`
Slabs made from overworld planks

- `flammable_stairs`
Stairs made from overworld planks

- `flammable_wood`
Blocks made out of overworld wood. Not limited to wood blocks ("bark blocks") and excludes non flammable wood blocks made from nether wood.

- `fortune_changes_drops`
Blocks whose drops can be affected by fortune enchantments if their loot table is unmodified.

- `fungi`
Nether fungus blocks.

- `furnaces`
Block entities which can cook items.

- `glass`
Does not include glass panes.

- `glazed_terracotta`

- `heads`
Mob and player heads.

- `infested`
Blocks that spawn silverfish when mined.

- `infinite_fire`
Blocks on which fire can be lit and does not extinguish.

- `invisible`
Blocks that do not render a texture.

- `liquids`

- `mushroom_blocks`
Blocks that generate as part of huge mushrooms. Does not include mushrooms.

- `mushrooms`
Brown/red mushrooms. Does not include nether fungus or mushroom blocks.

- `natural_logs`
Logs that generate naturally, including nether stems. Unlike #minecraft:logs, does not include wood, hyphae and stripped variants.

- `nether_blocks`
Blocks that can be found in the Nether, including as part of Nether fortresses.