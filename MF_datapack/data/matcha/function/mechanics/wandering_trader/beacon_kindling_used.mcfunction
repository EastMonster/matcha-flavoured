# Reset the advancement trigger
advancement revoke @s only matcha:mechanics/beacon_kindling

# Place the campfire block and play effects
execute at @n[type=marker,tag=beacon_kindling,tag=!beacon_kindling_init] run function matcha:mechanics/wandering_trader/place_beacon_kindling

# If this player already has an active Beacon Kindling, cancel the one they just placed
execute if entity @s[tag=SummonedTrader] run tellraw @s {"translate":"log.kleispack.wandering_trader.beacon_placed","color":"gray"}
execute if entity @s[tag=SummonedTrader] at @n[type=marker,tag=beacon_kindling,tag=!beacon_kindling_init] run return run function matcha:mechanics/wandering_trader/kill_this_beacon

# Mark the player and start summoning a wandering trader
function matcha:mechanics/wandering_trader/initialise_wandering_trader_spawn
tag @s add SummonedTrader
