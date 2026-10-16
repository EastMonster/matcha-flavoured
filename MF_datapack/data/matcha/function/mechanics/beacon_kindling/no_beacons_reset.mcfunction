# This function is run by the Server

# kill all summoned traders and reset players and let them know
kill @e[type=minecraft:wandering_trader,tag=summoned_by_beacon]

# No online players should have a score for this function to run in the first place, but just in case:
execute as @a[scores={wandering_trader_timer_score=0..}] run tellraw @s {"translate":"log.kleispack.wandering_trader.kill_early","color":"gray"}

scoreboard players reset * wandering_trader_timer_score
