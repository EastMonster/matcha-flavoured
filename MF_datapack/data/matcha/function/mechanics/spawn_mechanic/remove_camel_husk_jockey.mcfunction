
tag @s add SpawnForbidden
summon minecraft:husk
# If the camel is not in a desert, kill it
execute unless predicate matcha:in_desert run execute at @n[type=camel_husk] run tp @s ~ ~-1000 ~