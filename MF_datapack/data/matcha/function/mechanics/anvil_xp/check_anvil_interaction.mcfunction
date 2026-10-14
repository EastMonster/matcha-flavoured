# If they interact with an anvil, exclude them from xp removal
execute if score @s anvil_interaction matches 1.. run function matcha:mechanics/anvil_xp/set_xp

scoreboard players reset @s anvil_interaction
stopwatch restart xp_timer

# Revoke the advancement
advancement revoke @s only matcha:mechanics/check_anvil_interaction
