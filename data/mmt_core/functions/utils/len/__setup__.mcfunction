
# setup core.utils.len
data modify storage mcmmt:core_utils len set value {list:[], length: 0, args:{index: 0}}

# utils.len
scoreboard objectives add core_utils_len dummy
scoreboard players set iter core_utils_len 0
scoreboard players set len core_utils_len 1
execute if score logon core_setting matches 1 run say Inited scoreboard for core.utils.len
