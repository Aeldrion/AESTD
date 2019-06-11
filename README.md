# AESTD

**AESTD**, or **Aeldrion's standard command library**, is a utility datapack for Minecraft 1.14.2 meant to be used by other data pack creators.
It contains tools that make the development of data packs easier.
It is used by several datapacks, including some of my own.

## Contents

### Function library
The AESTD function library contains over sixty functions to simplify command making.
It includes the following, and many more:
- Biome detection
- Weather detection
- Player inventory manipulation
- Flexible mob damage ("/damage")
- Getting the name/the head of a player
- Generating random numbers

### Tag library
The AESTD tag library adds over 150 block, item, entity type and function tags.
The function tags can be used to detect efficiently the following events:
- Taking damage
- Dealing damage
- Killing an entity
- Dying
- Using a carrot on a stick (right-click detection)
- Inventory change

### Function evaluator
The function evaluator can be used to evaluate accurately the performance cost of a function.
This can be used to see what options are the most performant and therefore to optimise functions.

## Why should I use AESTD?

### Simplicity
AESTD is easy to install, to merge with your data packs and to use.
Functions require no extensive knowledge of commands and tricks on which they rely to be used by other command artists.
Everything is already setup.
From the perspective of a player, once the save chunk is loaded, AESTD will be completely invisible.

### Compatibility
AESTD is compatible with other data packs and replaces almost nothing from vanilla.
It can be used with other library data packs such as Phi.
Multiple data packs can also use the save chunk for storing data.

### Efficiency
AESTD will not affect the game's performance heavily on its own as it does not run any commands most of the time.
The functions included in the function library are optimised to reduce the total amount of commands, NBT operations and the use of entities.
Furthermore, the function tags use hidden advancements instead of scoreboard objectives so that you do not need to check for a score every tick.

## Links

[Official wiki](minecraft.gamepedia.com/User:Aeldrion/Projects/AESTD)
[Discord server](https://discord.gg/KJet4xF)
