# This function is run once every 10s by the Server

# If the campfire is broken, kill everything
execute as @e[type=marker,tag=beacon_kindling] at @s unless block ~ ~ ~ minecraft:campfire[lit=true] run function matcha:mechanics/beacon_kindling/kill_wandering_trader_early

# Check if the 10 min timer is up (60), and the beacon has NOT already summoned a trader, if true, summon him
execute as @e[type=marker,tag=beacon_kindling,tag=!summoned_trader] if score @s wandering_trader_timer_score matches 60.. at @s run function matcha:mechanics/beacon_kindling/summon_wandering_trader


# Check if Beacon Kindling should be extinguished
execute as @e[type=marker,tag=beacon_kindling,scores={wandering_trader_timer_score=90..}] at @s run function matcha:mechanics/beacon_kindling/kill_beacon

# Check if Wandering Traders should leave
execute as @e[type=wandering_trader,tag=summoned_by_beacon,scores={wandering_trader_timer_score=30..}] at @s run function matcha:mechanics/beacon_kindling/kill_wandering_trader

# Check if Players should be allowed to place another Beacon Kindling
execute as @a[scores={wandering_trader_timer_score=90..}] run scoreboard players reset @s wandering_trader_timer_score


# Add 10 seconds to scores (a value of 1)
execute as @e[type=marker,tag=beacon_kindling] run scoreboard players add @s wandering_trader_timer_score 1
execute as @e[type=wandering_trader,tag=summoned_by_beacon] run scoreboard players add @s wandering_trader_timer_score 1
execute as @a[scores={wandering_trader_timer_score=0..}] run scoreboard players add @s wandering_trader_timer_score 1
