execute as @a[tag=!ExcludeFromXPRemoval] run xp set @s 0 levels
execute as @a[tag=!ExcludeFromXPRemoval] run xp set @s 0 points

execute unless stopwatch xp_timer ..30.9 run tag @a remove ExcludeFromXPRemoval