
# check loop
execute unless entity @e[type=minecraft:marker, tag=cu_bfs_ptr, tag=!cu_bfs_alr, tag=!cu_bfs_badptr] run return fail

# make color
function mmt_core:utils/private_bfs/get_color

# action on each ptr
execute as @e[type=minecraft:marker, tag=cu_bfs_ptr, tag=!cu_bfs_alr, tag=!cu_bfs_badptr] at @s run function mmt_core:utils/private_bfs/bfs_action

# increase depth
scoreboard players add depth core_utils_search 1

# next loop
function mmt_core:utils/private_bfs/bfs_iteration
