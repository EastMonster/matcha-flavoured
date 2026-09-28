# Reset trigger
advancement revoke @s only matcha:mechanics/amnestic/villager

# Debug
#say triggered amnestic on villager
#execute anchored eyes positioned ^ ^ ^1.5 run particle minecraft:flame

# Run amnestic effects on (approximately) the villager that was clicked with the amnestic
execute anchored eyes positioned ^ ^ ^1.5 as @n[type=villager] run function matcha:mechanics/amnestic/villager_consumed

# Remove one amnestic
execute unless entity @s[gamemode=creative] run clear @s *[minecraft:item_model="matcha:amnestic_wrapped"] 1