# If the player is close to the Jukebox, play Dry Hands
execute unless entity @s[tag=music_played] unless entity @p[distance=..30,gamemode=survival] run return fail

fill ~1 ~ ~1 ~-1 ~ ~-1 air replace redstone_block

schedule function matcha:environmental/kill_village_hopper 2t

tag @s add music_played
