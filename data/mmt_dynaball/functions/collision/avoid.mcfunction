
execute store success score temp dnb_system run scoreboard players get @s dnb_tnt_last_mx
execute if score temp dnb_system matches 0 run return fail
return 1
