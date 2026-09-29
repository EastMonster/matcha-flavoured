# Reset the trigger
advancement revoke @s only matcha:mechanics/glow_crumble_eaten

# Set the duration of the resulting Glowing Effect (in seconds)
scoreboard players set @s AuraDuration 60

# Run the effect script unless an Aura effect is already charging
execute unless score @s AuraWindup matches 0.. run function matcha:effects/soul_sight_effect
