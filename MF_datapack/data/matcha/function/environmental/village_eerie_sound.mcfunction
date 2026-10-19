# This function runs every tick

# Check if player is still in village, if they are not, reset their score and revoke the advancement so they may get it again next time they come
#execute as @a if score @s eerie >= 1 eerie if predicate matcha:not_in_village run advancement revoke @s only matcha:mechanics/enter_village
#execute as @a if score @s eerie >= 1 eerie if predicate matcha:not_in_village run scoreboard players set @s eerie 0

# Check if the player is in a village structure, if so, let the entity face them
execute at @n[type=minecraft:mannequin,tag=haunted] if entity @p[predicate=matcha:in_village] run function matcha:environmental/village_entity_movement

# If the player is in a  village structure, and close to him, play Dry Hands
execute at @n[type=minecraft:mannequin,tag=haunted,tag=!music_played] if entity @p[predicate=matcha:in_village,distance=..30,gamemode=survival] run function matcha:environmental/play_village_jukebox

# If they get too close, and don't come through the door, kill everything
execute at @n[type=minecraft:mannequin,tag=haunted] at @n[type=marker,tag=jukebox] if entity @p[distance=..2,gamemode=survival] run function matcha:environmental/kill_village_entity
execute at @n[type=minecraft:mannequin,tag=haunted] if entity @p[distance=..5,gamemode=survival] run function matcha:environmental/kill_village_entity

# Kills any playing music
execute as @a[predicate=matcha:in_village] run stopsound @s music

# This makes it kinda random because the tick and time doesn't always line up, the best I could do ig
execute as @a[predicate=matcha:in_village] if stopwatch eerie 1..1.02 if block ~ ~-.5 ~ minecraft:coarse_dirt run playsound minecraft:block.wood.step player @s ~-2 ~4 ~ 0.5
execute as @a[predicate=matcha:in_village] if stopwatch eerie 1.25..1.27 if block ~ ~-.5 ~ minecraft:coarse_dirt run playsound minecraft:block.wood.step player @s ~-1 ~4 ~ 0.5
execute as @a[predicate=matcha:in_village] if stopwatch eerie 1.5..1.53 if block ~ ~-.5 ~ minecraft:coarse_dirt run playsound minecraft:block.wood.step player @s ~ ~4 ~ 0.5
execute as @a[predicate=matcha:in_village] if stopwatch eerie 1.75..1.78 if block ~ ~-.5 ~ minecraft:coarse_dirt run playsound minecraft:block.wood.step player @s ~1 ~4 ~ 0.5

execute as @a[predicate=matcha:in_village] if stopwatch eerie 1..1.02 if block ~ ~-.5 ~ minecraft:oak_planks run playsound minecraft:block.grass.break player @s ^5 ^ ^ 1
execute as @a[predicate=matcha:in_village] if stopwatch eerie 100..100.02 if block ~ ~-.5 ~ minecraft:oak_planks run playsound minecraft:block.grass.break player @s ^5 ^ ^ 1

execute as @a[predicate=matcha:in_village] if stopwatch eerie 1..1.02 if block ~ ~-.5 ~ minecraft:oak_planks run playsound minecraft:ambient.cave ambient @s ~ ~ ~

execute as @a[predicate=matcha:in_village] if stopwatch eerie 1..1.02 if block ~ ~-.5 ~ minecraft:gravel run playsound minecraft:block.gravel.break player @s ^ ^-3 ^ 1
execute as @a[predicate=matcha:in_village] if stopwatch eerie 100..100.02 if block ~ ~-.5 ~ minecraft:gravel run playsound minecraft:block.stone.place player @s ^ ^-3 ^ 1

execute as @a[predicate=matcha:in_village] if stopwatch eerie 1..1.02 if block ~ ~-.5 ~ minecraft:suspicious_gravel run playsound minecraft:block.wooden_door.open player @s ^ ^ ^-3 1

execute as @a[predicate=matcha:in_village] if stopwatch eerie 1..1.02 if block ~ ~-.5 ~ minecraft:grass_block run playsound minecraft:block.grass.break player @s ~ ~-4 ~ 0.5
execute as @a[predicate=matcha:in_village] if stopwatch eerie 1.25..1.27 if block ~ ~-.5 ~ minecraft:grass_block run playsound minecraft:block.stone.place player @s ~3 ~-4 ~ 0.5
execute as @a[predicate=matcha:in_village] if stopwatch eerie 1.5..1.53 if block ~ ~-.5 ~ minecraft:grass_block run playsound minecraft:block.stone.place player @s ~2 ~-4 ~ 0.5
execute as @a[predicate=matcha:in_village] if stopwatch eerie 1.75..1.78 if block ~ ~-.5 ~ minecraft:grass_block run playsound minecraft:block.stone.place player @s ~1 ~-4 ~ 0.5
execute as @a[predicate=matcha:in_village] if stopwatch eerie 1.75..1.78 if block ~ ~-.5 ~ minecraft:grass_block run playsound minecraft:block.stone.place player @s ~ ~-4 ~ 0.5