# kill all summoned traders and reset players and let them know
kill @e[type=minecraft:wandering_trader,tag=summoned_by_beacon]

execute as @a[scores={wandering_trader_timer_score=0..}] run tellraw @s {"translate":"log.kleispack.wandering_trader.kill_early","color":"gray"}

scoreboard players reset * wandering_trader_timer_score
