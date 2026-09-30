# Play a sound
playsound minecraft:block.bell.resonate player @s ~ ~ ~ 2 1


# Since /schedule loses track of the player who triggered it, we use a scoreboard to keep track of who is using this effect, at what time.

# Start the Windup timer for the Effect
scoreboard players set @s AuraWindup 48

# Schedule a check to apply the Effect when this player's Windup Timer should be 0
schedule function matcha:effects/aura/locate_players 48 append

# This check fails for every player who's Windup Timer score is anything other than 0 (above or below)
