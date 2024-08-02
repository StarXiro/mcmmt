
# give tag
tag @s add cu_bfs_ptr

# setup color
execute store result storage mcmmt:core_utils search.map_args.from[1] int 1.0 run scoreboard players get max_depth core_utils_search
scoreboard players set distance core_utils_color_panel 1000
function mmt_core:utils/linear_map_set with storage mcmmt:core_utils search.map_args

scoreboard players operation input core_utils_to_bin = direction core_utils_search
function mmt_core:utils/private_to_bin/pre_work

# start iteration
function mmt_core:utils/private_bfs/bfs_iteration

# clear
kill @e[type=minecraft:marker, tag=cu_bfs_badptr]
