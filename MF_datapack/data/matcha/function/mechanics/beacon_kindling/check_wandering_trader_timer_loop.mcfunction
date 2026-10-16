# This function is run by the Server

# Check if the 10 min timer is up (60), and the beacon has NOT already summoned a trader, if true, summon him
execute as @e[type=marker,tag=beacon_kindling,tag=!summoned_trader] if score @s wandering_trader_timer_score matches 60.. at @s run function matcha:mechanics/beacon_kindling/summon_wandering_trader

# Check if the 15 min timer is up (90), and the beacon has summoned a trader, if true, delete him
execute as @e[type=marker,tag=beacon_kindling,tag=summoned_trader] if score @s wandering_trader_timer_score matches 90.. at @s run function matcha:mechanics/beacon_kindling/kill_wandering_trader

# If the campfire is broken, kill everything
execute as @e[type=marker,tag=beacon_kindling] at @s unless block ~ ~ ~ minecraft:campfire[lit=true] run function matcha:mechanics/beacon_kindling/kill_wandering_trader_early


# Add 10 seconds to scores (a value of 1)
execute as @e[type=marker,tag=beacon_kindling] run scoreboard players add @s wandering_trader_timer_score 1
execute as @a[scores={wandering_trader_timer_score=0..}] run scoreboard players add @s wandering_trader_timer_score 1

# If the time on any of them OR any player is less than 15min (90), Restart the loop in 10 seconds
execute as @e[type=marker,tag=beacon_kindling] if score @s wandering_trader_timer_score matches ..90 run schedule function matcha:mechanics/beacon_kindling/check_wandering_trader_timer_loop 10s
execute as @a if score @s wandering_trader_timer_score matches ..90 run schedule function matcha:mechanics/beacon_kindling/check_wandering_trader_timer_loop 10s

# If there are no active beacons, OR players waiting for it, kill all summoned traders and reset players (just in case)
execute unless entity @e[type=marker,tag=beacon_kindling] unless entity @a[scores={wandering_trader_timer_score=..90}] run function matcha:mechanics/beacon_kindling/no_beacons_reset