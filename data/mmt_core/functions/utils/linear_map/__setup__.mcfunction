
# setup core.utils.linear_map
data modify storage mcmmt:core_utils linear_map set value {from: [0, 100], to: [0, 100], temp: [0, 0]}

# utils.linear_map
scoreboard objectives add core_utils_linear_map dummy
scoreboard players set to_upper core_utils_linear_map 0
scoreboard players set to_lower core_utils_linear_map 0
scoreboard players set from_lower core_utils_linear_map 0
scoreboard players set from_upper core_utils_linear_map 0
scoreboard players set temp1 core_utils_linear_map 0
scoreboard players set temp2 core_utils_linear_map 0
scoreboard players set temp3 core_utils_linear_map 0
scoreboard players set input core_utils_linear_map 0
scoreboard players set result core_utils_linear_map 0
execute if score logon core_setting matches 1 run say Inited scoreboard for core.utils.linear_map
