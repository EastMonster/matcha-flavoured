# This function is ran every tick by Players that are in Villages

# Check if the player is in a village structure, if so, let the entity face them
execute at @n[type=minecraft:mannequin,tag=haunted] run function matcha:environmental/village_entity_movement

# If the player is close to him, play Dry Hands
execute at @n[type=minecraft:mannequin,tag=haunted,tag=!music_played] if entity @s[,distance=..30,gamemode=survival] run function matcha:environmental/play_village_jukebox

# If they get too close, and don't come through the door, kill everything
execute at @n[type=marker,tag=jukebox] if entity @s[distance=..2,gamemode=survival] run function matcha:environmental/kill_village_entity
execute at @n[type=minecraft:mannequin,tag=haunted] if entity @s[distance=..5,gamemode=survival] run function matcha:environmental/kill_village_entity

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