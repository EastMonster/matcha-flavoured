# This function is run by the Beacon Kindling marker

# The Wandering Trader disappears in a cloud of smoke
execute at @n[type=minecraft:wandering_trader,tag=summoned_by_beacon] run particle minecraft:poof ~ ~.5 ~ .2 1 .2 0 50
tp @n[type=minecraft:wandering_trader,tag=summoned_by_beacon] ~ ~-1000 ~

# The campfire is extinguished
setblock ~ ~ ~ campfire[lit=false] replace
particle minecraft:large_smoke ~ ~ ~ .1 .1 .1 0.1 10

# Kill this Marker
kill @s

# Tell nearby players that the Wandering Trader has left
tellraw @a[distance=..128] {"translate":"log.kleispack.wandering_trader.kill","color":"gray"}

# Stop tracking any players who summoned a Wandering Trader 15mins ago
execute as @a if score @s wandering_trader_timer_score >= 15min wandering_trader_timer_score run tag @s remove SummonedTrader
execute as @a if score @s wandering_trader_timer_score >= 15min wandering_trader_timer_score run scoreboard players reset @s wandering_trader_timer_score
