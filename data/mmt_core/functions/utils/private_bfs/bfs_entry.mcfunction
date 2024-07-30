
scoreboard players operation input core_utils_to_bin = direction core_utils_search
function mmt_core:utils/private_to_bin/pre_work

scoreboard players set @s core_utils_ptr_depth 0

execute run function mmt_core:utils/private_bfs/bfs_iteration with storage mcmmt:core_utils search

# kill @e[type=minecraft:armor_stand, tag=cu_bfs_badptr]
