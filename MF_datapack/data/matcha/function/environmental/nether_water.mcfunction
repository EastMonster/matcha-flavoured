execute if predicate matcha:invalid_nether_water run fill ~-20 ~-20 ~-20 ~20 ~20 ~20 air replace water
playsound minecraft:block.fire.extinguish block @s ~ ~ ~ 0.5 2
scoreboard players reset @s water_bucket_used
