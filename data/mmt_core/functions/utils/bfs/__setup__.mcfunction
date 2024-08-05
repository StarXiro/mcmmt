
# setup core.utils.bfs
data modify storage mcmmt:core_utils search set value {on_block: "mmt_core:utils/bfs/private/bfs_entry", args:{x:[I;0, 0], y:[I;0, 0], z:[I;0, 0]}, map_args: {from: [0, 0], to: [-1500, 1500]}, presets: {same_block: "minecraft:stone"}}

# utils.bfs
scoreboard objectives add core_utils_search dummy
scoreboard players set origin_x core_utils_search 0
scoreboard players set origin_y core_utils_search 0
scoreboard players set origin_z core_utils_search 0
scoreboard players set max_depth core_utils_search 50
scoreboard players set max_steps core_utils_search 200
scoreboard players set direction core_utils_search 63
scoreboard players set x_pos_range core_utils_search 10
scoreboard players set x_neg_range core_utils_search -10
scoreboard players set y_pos_range core_utils_search 10
scoreboard players set y_neg_range core_utils_search -10
scoreboard players set z_pos_range core_utils_search 10
scoreboard players set z_neg_range core_utils_search -10
scoreboard players set steps core_utils_search 0
scoreboard players set depth core_utils_search 0
scoreboard players set temp core_utils_search 0
execute if score logon core_setting matches 1 run say Inited scoreboard for core.utils.bfs
