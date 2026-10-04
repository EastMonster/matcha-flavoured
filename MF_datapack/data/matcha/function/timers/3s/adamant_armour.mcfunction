# Apply armor pieces adamant effect for 1s timer

execute as @a[scores={adamant_armour=1}] at @s run function matcha:enchantment_effects/adamant_effects/doom/find_targets.macro {damage:3,range:12}
execute as @a[scores={adamant_armour=2}] at @s run function matcha:enchantment_effects/adamant_effects/doom/find_targets.macro {damage:6,range:16}
execute as @a[scores={adamant_armour=3}] at @s run function matcha:enchantment_effects/adamant_effects/doom/find_targets.macro {damage:9,range:20}
execute as @a[scores={adamant_armour=4}] at @s run function matcha:enchantment_effects/adamant_effects/doom/find_targets.macro {damage:16,range:28}
