
execute if entity @e[type=minecraft:marker, tag=cu_cp_ptr, distance=..0.75] run return fail
tag @s remove cu_cp_in
tag @s add cu_cp_out
