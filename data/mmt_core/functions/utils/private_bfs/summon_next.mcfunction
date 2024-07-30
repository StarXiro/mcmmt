
# validate
execute unless function mmt_core:utils/private_bfs/bfs_validation run return run tag @s add cu_bfs_badptr

# tag self
tag @s add cu_bfs_alr
scoreboard players add steps core_utils_search 1

# next gen
execute if score pos0 core_utils_to_bin matches 1 positioned ~ ~ ~-1 run function mmt_core:utils/private_bfs/create_ptr
execute if score pos1 core_utils_to_bin matches 1 positioned ~ ~ ~1 run function mmt_core:utils/private_bfs/create_ptr
execute if score pos2 core_utils_to_bin matches 1 positioned ~ ~-1 ~ run function mmt_core:utils/private_bfs/create_ptr
execute if score pos3 core_utils_to_bin matches 1 positioned ~ ~1 ~ run function mmt_core:utils/private_bfs/create_ptr
execute if score pos4 core_utils_to_bin matches 1 positioned ~1 ~ ~ run function mmt_core:utils/private_bfs/create_ptr
execute if score pos5 core_utils_to_bin matches 1 positioned ~-1 ~ ~ run function mmt_core:utils/private_bfs/create_ptr
execute if score pos6 core_utils_to_bin matches 1 positioned ~ ~-1 ~-1 run function mmt_core:utils/private_bfs/create_ptr
execute if score pos7 core_utils_to_bin matches 1 positioned ~ ~1 ~1 run function mmt_core:utils/private_bfs/create_ptr
execute if score pos8 core_utils_to_bin matches 1 positioned ~ ~1 ~-1 run function mmt_core:utils/private_bfs/create_ptr
execute if score pos9 core_utils_to_bin matches 1 positioned ~ ~-1 ~1 run function mmt_core:utils/private_bfs/create_ptr
execute if score pos10 core_utils_to_bin matches 1 positioned ~-1 ~ ~1 run function mmt_core:utils/private_bfs/create_ptr
execute if score pos11 core_utils_to_bin matches 1 positioned ~-1 ~ ~-1 run function mmt_core:utils/private_bfs/create_ptr
execute if score pos12 core_utils_to_bin matches 1 positioned ~1 ~ ~1 run function mmt_core:utils/private_bfs/create_ptr
execute if score pos13 core_utils_to_bin matches 1 positioned ~1 ~ ~-1 run function mmt_core:utils/private_bfs/create_ptr
execute if score pos14 core_utils_to_bin matches 1 positioned ~1 ~1 ~ run function mmt_core:utils/private_bfs/create_ptr
execute if score pos15 core_utils_to_bin matches 1 positioned ~-1 ~-1 ~ run function mmt_core:utils/private_bfs/create_ptr
execute if score pos16 core_utils_to_bin matches 1 positioned ~-1 ~1 ~ run function mmt_core:utils/private_bfs/create_ptr
execute if score pos17 core_utils_to_bin matches 1 positioned ~1 ~-1 ~ run function mmt_core:utils/private_bfs/create_ptr
execute if score pos18 core_utils_to_bin matches 1 positioned ~1 ~1 ~1 run function mmt_core:utils/private_bfs/create_ptr
execute if score pos19 core_utils_to_bin matches 1 positioned ~-1 ~-1 ~-1 run function mmt_core:utils/private_bfs/create_ptr
execute if score pos20 core_utils_to_bin matches 1 positioned ~-1 ~1 ~1 run function mmt_core:utils/private_bfs/create_ptr
execute if score pos21 core_utils_to_bin matches 1 positioned ~1 ~-1 ~1 run function mmt_core:utils/private_bfs/create_ptr
execute if score pos22 core_utils_to_bin matches 1 positioned ~1 ~1 ~-1 run function mmt_core:utils/private_bfs/create_ptr
execute if score pos23 core_utils_to_bin matches 1 positioned ~-1 ~-1 ~1 run function mmt_core:utils/private_bfs/create_ptr
execute if score pos24 core_utils_to_bin matches 1 positioned ~-1 ~1 ~-1 run function mmt_core:utils/private_bfs/create_ptr
execute if score pos25 core_utils_to_bin matches 1 positioned ~1 ~-1 ~-1 run function mmt_core:utils/private_bfs/create_ptr

# update depth
scoreboard players set @e[type=minecraft:armor_stand, tag=cu_bfs_temp] core_utils_ptr_depth 1
scoreboard players operation @e[type=minecraft:armor_stand, tag=cu_bfs_temp] core_utils_ptr_depth += @s core_utils_ptr_depth
tag @e[type=minecraft:armor_stand, tag=cu_bfs_temp] remove cu_bfs_temp

# next iteration
execute as @e[type=minecraft:armor_stand, tag=cu_bfs_ptr, tag=!cu_bfs_alr, tag=!cu_bfs_badptr] at @s run function mmt_core:utils/private_bfs/bfs_iteration with storage mcmmt:core_utils search