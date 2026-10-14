# Revoke the advancement
advancement revoke @s only matcha:mechanics/require_xp

# Exclude them from xp removal for 30 seconds
scoreboard players set @s XpDuration 600

xp set @s 100 levels
