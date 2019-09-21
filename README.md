# AESTD

**AESTD**, or **Aeldrion's standard command library**, is a utility data pack for Minecraft 1.14.4 meant to be used by other data pack creators.
It contains tools that make the development of data packs easier, and relies on little-known tricks that may help command learners and advanced creators alike.

## Contents

### Function library
The AESTD function library contains over 90 functions to simplify command making.
It includes the following, and many more:
- Biome detection
- Weather detection
- Player inventory manipulation
- Flexible mob damage ("/damage")
- Getting the name/the head of a player
- Random number generation
- 2D Perlin noise generation

### Tag library
The AESTD tag library is a collection of over 180 block, item, entity type and function tags.
Other data packs may append their functions to the function tags in order to detect efficiently the following events:
- Taking damage
- Dealing damage
- Killing an entity
- Dying
- Using a carrot on a stick (right-click detection)
- Inventory changes

### Benchmarking tool
The benchmarking tools can be used to evaluate accurately the performance cost of a function.
This can be used to see what options are the most performant and therefore to optimise functions.

## Why should I use AESTD?

### Simplicity
AESTD is easy to install, to merge with your data packs and to use.
Functions require no extensive knowledge of commands and tricks on which they rely to be used by other command artists.
Everything is already setup.
From the perspective of a player using your data pack or playing your map, AESTD will be completely invisible.

### Compatibility
AESTD is compatible with other data packs and replaces almost nothing from vanilla.
It can be used with other library data packs such as Phi or Lantern.
Multiple data packs can also use the save chunk system for storing data.

### Efficiency
AESTD will not affect the game's performance heavily on its own.
The functions included in the function library are optimised to reduce the total amount of commands, NBT operations and use of entities. Commands used by AESTD are evaluated by benchmarking tools to leave as little overhang as possible.
Furthermore, the function tags use hidden advancements instead of scoreboard objectives so that you do not need to check for a score every tick.

## How do I use AESTD?

### Maps
* Download AESTD below. Note that only the latest version is supported, meaning that you are on your own if you encounter bugs. However, later AESTD versions may be incompatible with outdated Minecraft versions.
* Place the data pack in your map's `datapacks` folder. You don't need to extract it - it works both as a zip and as a folder.
* AESTD will be automatically setup: all features are ready to be used.

### Data packs
If your data pack uses AESTD, you can share AESTD separately with your data pack. I however recommend merging AESTD with your data pack. Instructions for doing so can be found [on the wiki](https://minecraft.gamepedia.com/User:Aeldrion/Projects/AESTD#Merging_AESTD_with_your_data_pack).

### Crediting
You are free to share maps or data packs that rely on AESTD without crediting. You will not get into any trouble. However, crediting is always welcome. If you want to credit me, you can use the following information:

```
Uses AESTD by Aeldrion
https://www.github.com/Aeldrion/AESTD
https://www.twitter.com/Aeldrion
```

## Downloads

[AESTD v0.2 (19w34a)](http://www.mediafire.com/file/y73kgz0l39z9zq3)

[AESTD v0.2 (1.14.4)](http://www.mediafire.com/file/swp4mn1coisodfi)

[AESTD v0.1 (19w05a)](http://www.mediafire.com/file/m7cwbkzd4jddqu6)

## Links

[Official wiki](https://minecraft.gamepedia.com/User:Aeldrion/Projects/AESTD)

[Discord server](https://discord.gg/KJet4xF)
