# Revoke the advancement
advancement revoke @s only matcha:mechanics/require_xp

# Set their xp levels to a high value, so they don't hear the level-up sound very often (No longer applicable)
xp set @s 10000 levels

#This is decremented in ../remove_xp which is called in 1s.mcfunction timers
scoreboard players set @s matcha.xp_timer 30