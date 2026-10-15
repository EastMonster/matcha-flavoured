# Place the campfire block and play effects
execute at @n[type=marker,tag=beacon_kindling,tag=!beacon_kindling_init] run setblock ~ ~ ~ minecraft:campfire[signal_fire=true]
execute at @n[type=marker,tag=beacon_kindling,tag=!beacon_kindling_init] run particle minecraft:flame ~ ~.7 ~ .1 .1 .1 0.07 30
execute at @n[type=marker,tag=beacon_kindling,tag=!beacon_kindling_init] run playsound minecraft:item.firecharge.use block @a ~ ~ ~ 1
execute at @n[type=marker,tag=beacon_kindling,tag=!beacon_kindling_init] run playsound minecraft:entity.wither.spawn block @a ~ ~ ~ 0.5

# Reset the advancement trigger
advancement revoke @s only matcha:mechanics/beacon_kindling

# If this player already has an active Beacon Kindling, cancel the one they just placed
execute if entity @s[tag=SummonedTrader] run tellraw @s {"translate":"log.kleispack.wandering_trader.beacon_placed","color":"gray"}
execute if entity @s[tag=SummonedTrader] at @n[type=marker,tag=beacon_kindling,tag=!beacon_kindling_init] run function matcha:mechanics/wandering_trader/kill_this_beacon

# Mark the player and start summoning a wandering trader
execute if entity @s[tag=!SummonedTrader] run function matcha:mechanics/wandering_trader/initialise_wandering_trader_spawn
execute if entity @s[tag=!SummonedTrader] run tag @s add SummonedTrader
