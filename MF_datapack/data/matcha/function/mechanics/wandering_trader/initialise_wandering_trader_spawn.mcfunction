# Tell nearby players that a Wandering Trader is coming
tellraw @a[distance=..128] {"translate":"log.kleispack.wandering_trader.initialise","color":"gray"}

# give the beacon kindling marker a timer score of 0
scoreboard players add @n[type=marker,tag=beacon_kindling,tag=!beacon_kindling_init] wandering_trader_timer_score 0

# tag the beacon kindling marker as Initialised
execute as @n[type=marker,tag=beacon_kindling,tag=!beacon_kindling_init] run tag @s add beacon_kindling_init

# Initialise the loop
schedule function matcha:mechanics/wandering_trader/check_wandering_trader_timer_loop 1s
#schedule function matcha:mechanics/wandering_trader/initialise_wandering_trader_spawn
