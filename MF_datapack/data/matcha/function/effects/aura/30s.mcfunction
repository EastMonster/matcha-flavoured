# Reset the trigger
advancement revoke @s only matcha:mechanics/aura_effect/30s

# Set the duration of the resulting Glowing Effect (in seconds)
scoreboard players set @s AuraDuration 30

# Run the effect script unless an Aura effect is already charging
execute unless score @s AuraWindup matches 0.. run function matcha:effects/aura/effect
