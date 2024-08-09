
# setup core.utils.check_point
data modify storage mcmmt:core_utils check_point set value {points: [{name: "example", pos: [0, 0, 0]}], call_bag: {callback: "mmt_core:utils/check_point/private/default_callback", target: {}}, max_index: 0, map_args: {from: [0, 0], to: [-1200, 1200]}, init_args: {x: 0, y: 0, z: 0, id: 0, r: 0.0d, g: 0.0d, b: 0.0d}, target: {name: "none", pos:[0, 0, 0]}, back: {call_id: 0}, pos_temp:{x: 0, y: 0, z: 0, r1: 0.0f, r2: 0.0f}, vec3_temp: [0, 0, 0], summon: {item: {}, id_temp: 0, for_each:{list:[], loop_body: ""}}}

# utils.check_point
scoreboard objectives add core_utils_check_point dummy
scoreboard objectives add core_utils_check_point_id dummy
scoreboard players set show_marker core_utils_check_point 0
scoreboard players set force_ascend core_utils_check_point 0
scoreboard players set max_index core_utils_check_point 0
scoreboard players set out_of_bound core_utils_check_point 0
scoreboard players set index core_utils_check_point 0
scoreboard players set temp core_utils_check_point 0
scoreboard players set temp2 core_utils_check_point 0
scoreboard players set temp3 core_utils_check_point 0
execute if score logon core_setting matches 1 run say Inited scoreboard for core.utils.check_point
