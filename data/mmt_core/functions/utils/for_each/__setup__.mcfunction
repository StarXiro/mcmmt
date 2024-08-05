
# setup core.utils.for_each
data modify storage mcmmt:core_utils for_each set value {loop_cnt: 0, object: {}}

# utils.for_each
scoreboard objectives add core_utils_for_each dummy
scoreboard players set iter core_utils_for_each 0
execute if score logon core_setting matches 1 run say Inited scoreboards for core.utils.for_each
