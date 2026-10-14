# Revoke the advancement
advancement revoke @s only matcha:mechanics/check_anvil_interaction

# Do not run the rest of this function if the player has not interacted with an Anvil
execute unless score @s anvil_interaction matches 1.. run return fail

scoreboard players reset @s anvil_interaction

# Exclude them from xp removal for 30 seconds
scoreboard players set @s XpDuration 600

xp set @s 100 levels
