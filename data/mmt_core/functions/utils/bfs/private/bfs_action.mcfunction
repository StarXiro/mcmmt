
# custom validation
scoreboard players set temp core_utils_search 0
function mmt_core:utils/private_bfs/custom_validation with storage mcmmt:core_utils search
execute if score temp core_utils_search matches 1 run return run tag @s add cu_bfs_badptr

# setting validation
execute unless function mmt_core:utils/private_bfs/bfs_validation run return run tag @s add cu_bfs_badptr

# ptr is valid
tag @s add cu_bfs_alr

# setup data
data modify entity @s data.depth set value 0
data modify entity @s data.rgb set value {r: 0.0d, g: 0.0d, b: 0.0d}
# move value
execute store result entity @s data.depth int 1.0 run scoreboard players get depth core_utils_search
data modify entity @s data.rgb.r set from storage mcmmt:core_utils color_panel.r
data modify entity @s data.rgb.g set from storage mcmmt:core_utils color_panel.g
data modify entity @s data.rgb.b set from storage mcmmt:core_utils color_panel.b

# summon next
function mmt_core:utils/private_bfs/summon_next

# add step
scoreboard players add steps core_utils_search 1
