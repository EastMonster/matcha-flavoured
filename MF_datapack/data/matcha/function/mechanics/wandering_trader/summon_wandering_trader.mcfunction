# This function is run by the Beacon Kindling marker
# Because the scoreboard only applies when it is loaded (I assume?) It means that when checked the player must be close enough to load the beacon kindling, therefore there is no danger of just summoning the trader at that time

# Add the tag so that the beacon doesn't summon another
tag @s add summoned_trader

summon wandering_trader ^1 ^ ^ {Invulnerable:1b,Tags:["summoned_by_beacon"]}

tellraw @a[distance=..128] {"translate":"log.kleispack.wandering_trader.summoned","color":"gray"}