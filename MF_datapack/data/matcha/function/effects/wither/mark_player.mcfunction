# Reset trigger
advancement revoke @s only matcha:mechanics/has_wither_effect

# If they are granted (and sometimes cleared of) the wither effect add them to the wither_timer scoreboard
# This will not fire in easy mode
execute unless score current_world_settings_difficulty difficulty_score matches 1 run scoreboard players add @s wither_timer 0

# THIS FUNCTION calls timers/1s/wither_effect (go there to see what happens next)