# If there is a player on the server with score "leave_game" equal to 1
# this means this player just joined the server

execute as @a[scores={leave_game=1..}] run function matcha:setup/player_joined
