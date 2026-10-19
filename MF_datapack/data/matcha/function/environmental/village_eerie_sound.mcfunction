# This function is ran every tick by Players that are in Villages

# Activate the Entity
execute as @n[type=minecraft:mannequin,tag=haunted] at @s run function matcha:environmental/village/entity

# Activate the Jukebox
execute as @n[type=marker,tag=jukebox] at @s run function matcha:environmental/village/jukebox

# Kills any playing music
stopsound @s music

# This makes it kinda random because the tick and time doesn't always line up, the best I could do ig
execute if stopwatch eerie 1..1.02 if block ~ ~-.5 ~ minecraft:coarse_dirt run playsound minecraft:block.wood.step player @s ~-2 ~4 ~ 0.5
execute if stopwatch eerie 1.25..1.27 if block ~ ~-.5 ~ minecraft:coarse_dirt run playsound minecraft:block.wood.step player @s ~-1 ~4 ~ 0.5
execute if stopwatch eerie 1.5..1.53 if block ~ ~-.5 ~ minecraft:coarse_dirt run playsound minecraft:block.wood.step player @s ~ ~4 ~ 0.5
execute if stopwatch eerie 1.75..1.78 if block ~ ~-.5 ~ minecraft:coarse_dirt run playsound minecraft:block.wood.step player @s ~1 ~4 ~ 0.5

execute if stopwatch eerie 1..1.02 if block ~ ~-.5 ~ minecraft:oak_planks run playsound minecraft:block.grass.break player @s ^5 ^ ^ 1
execute if stopwatch eerie 100..100.02 if block ~ ~-.5 ~ minecraft:oak_planks run playsound minecraft:block.grass.break player @s ^5 ^ ^ 1

execute if stopwatch eerie 1..1.02 if block ~ ~-.5 ~ minecraft:oak_planks run playsound minecraft:ambient.cave ambient @s ~ ~ ~

execute if stopwatch eerie 1..1.02 if block ~ ~-.5 ~ minecraft:gravel run playsound minecraft:block.gravel.break player @s ^ ^-3 ^ 1
execute if stopwatch eerie 100..100.02 if block ~ ~-.5 ~ minecraft:gravel run playsound minecraft:block.stone.place player @s ^ ^-3 ^ 1

execute if stopwatch eerie 1..1.02 if block ~ ~-.5 ~ minecraft:suspicious_gravel run playsound minecraft:block.wooden_door.open player @s ^ ^ ^-3 1

execute if stopwatch eerie 1..1.02 if block ~ ~-.5 ~ minecraft:grass_block run playsound minecraft:block.grass.break player @s ~ ~-4 ~ 0.5
execute if stopwatch eerie 1.25..1.27 if block ~ ~-.5 ~ minecraft:grass_block run playsound minecraft:block.stone.place player @s ~3 ~-4 ~ 0.5
execute if stopwatch eerie 1.5..1.53 if block ~ ~-.5 ~ minecraft:grass_block run playsound minecraft:block.stone.place player @s ~2 ~-4 ~ 0.5
execute if stopwatch eerie 1.75..1.78 if block ~ ~-.5 ~ minecraft:grass_block run playsound minecraft:block.stone.place player @s ~1 ~-4 ~ 0.5
execute if stopwatch eerie 1.75..1.78 if block ~ ~-.5 ~ minecraft:grass_block run playsound minecraft:block.stone.place player @s ~ ~-4 ~ 0.5