
data modify storage mcmmt:core_utils shuffle set value {list: [], swap: {}, macro_bag:{p1: 0, p2: 0}}

scoreboard objectives add core_utils_shuffle dummy
scoreboard players set chosen core_utils_shuffle 0
scoreboard players set last core_utils_shuffle 0
execute if score logon core_setting matches 1 run say Inited scoreboard for core.utils.shuffle
