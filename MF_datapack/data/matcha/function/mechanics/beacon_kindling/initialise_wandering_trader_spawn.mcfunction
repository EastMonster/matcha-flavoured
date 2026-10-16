# This function is run by the player who placed the Beacon

# Tell nearby players that a Wandering Trader is coming
tellraw @a[distance=..128] {"translate":"log.kleispack.wandering_trader.initialise","color":"gray"}

# tag the beacon kindling marker as Initialised
execute as @n[type=marker,tag=beacon_kindling,tag=!beacon_kindling_init] run tag @s add beacon_kindling_init

# Initialise the loop
function matcha:mechanics/beacon_kindling/check_wandering_trader_timer_loop
