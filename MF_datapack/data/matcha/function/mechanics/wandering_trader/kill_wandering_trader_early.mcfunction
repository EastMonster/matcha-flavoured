# This function is run by the Beacon Kindling marker

# If this Beacon has summoned a Wandering Trader, kill the nearest summoned Wandering trader
execute if score @s wandering_trader_timer_score >= 10min wandering_trader_timer_score run kill @n[type=minecraft:wandering_trader,tag=summoned_by_beacon]

# If the campfire is still present, extinguish it
execute if block ~ ~ ~ minecraft:campfire run setblock ~ ~ ~ minecraft:campfire[lit=false]

# Kill this Marker
kill @s

# Tell nearby players that the Wandering Trader has lost sight of the Beacon
execute as @a[distance=..128] run tellraw @s {"translate":"log.kleispack.wandering_trader.kill_early","color":"gray"}

# Untrack every player on the server
execute as @a if score @s wandering_trader_timer_score >= 0 wandering_trader_timer_score run tag @s remove SummonedTrader
execute as @a run scoreboard players reset @s wandering_trader_timer_score
