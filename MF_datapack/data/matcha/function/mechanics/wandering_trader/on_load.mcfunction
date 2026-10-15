# On load, set the wandering trader timer, and reset ALL people who summoned him, because if we don't, functions that should be looping wont be
# and it'll never ever fix itself. So if the server crashes, or someone logs out whilst waiting, they will never have a wandering trader arrive :c

# We will also kill any existing wandering traders, on load. Because again, that'll mess things up
kill @e[type=minecraft:wandering_trader,tag=summoned_by_beacon]

# Kill all Beacon Kindling
execute as @e[type=marker,tag=beacon_kindling] at @s run schedule function matcha:mechanics/wandering_trader/kill_wandering_trader_early 1s

# Stop tracking any (online) players
# This will not work on Dedicated Server Restart!
scoreboard players reset @a wandering_trader_timer_score
tag @a remove SummonedTrader
