#If score is - return from the function and stop
execute if score @s match.xp_timer matches ..-1 run return fail

#Decrement to 0 if score is >= 1
execute if score @s matcha.xp_timer matches 1.. run scoreboard players remove @s matcha.xp_timer 1

#Set to 0 if at 0 timer score (So it only happens once?)
execute if score @s matcha.xp_timer matches 0 run xp set @s 0 points
execute if score @s matcha.xp_timer matches 0 run xp set @s 0 levels
execute if score @s matcha.xp_timer matches 0 run scoreboard players reset @s matcha.xp_timer