# This function is run by the player who placed the beacon, at the location they placed it

setblock ~ ~ ~ minecraft:campfire[signal_fire=true]
particle minecraft:flame ~ ~.7 ~ .1 .1 .1 0.07 30
playsound minecraft:item.firecharge.use block @a ~ ~ ~ 1
playsound minecraft:entity.wither.spawn block @a ~ ~ ~ 0.5
