# Convert the player's AuraDuration score into a format that the Macro function can read
execute store result storage matcha:aura_duration AuraDuration float 1 run scoreboard players get @s AuraDuration

# Apply glowing to nearby entities
function matcha:effects/aura/apply_glow.macro with storage matcha:aura_duration

# While it shouldn't be necessary, I'm emptying the storage again just to be safe
data remove storage matcha:aura_duration AuraDuration
