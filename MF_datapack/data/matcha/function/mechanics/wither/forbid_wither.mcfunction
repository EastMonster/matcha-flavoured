execute as @a at @s if entity @n[type=minecraft:wither,distance=..100,predicate=matcha:wither/invalid_wither_spawn] run tellraw @s {translate:"error.kleispack.wither_spawn_invalid",color:"red"}

# Runs for all withers, including those not recently summoned
execute as @e[type=wither] if predicate matcha:wither/invalid_wither_spawn at @s run function matcha:mechanics/wither/kill_wither

