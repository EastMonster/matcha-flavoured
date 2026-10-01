#every second, if there are players who are on the wither timer scoreboard, check the wither timer
execute as @a[scores={wither_timer=0..}] at @s run function matcha:effects/wither/effect
