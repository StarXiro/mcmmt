
# setup core.utils.for_each
data modify storage mcmmt:core_utils for_each set value {list: [], macro_bag:{ args: {index: 0, object: {}, extra_index: []}, loop_body: ""}, stack_bag: {index: 0, loop_body: "", list: []}, depth: 0, stack: [], length: 0, examples:{list: []}}

# utils.for_each
scoreboard objectives add core_utils_for_each dummy
scoreboard players set iter core_utils_for_each 0
scoreboard players set len core_utils_for_each 1
scoreboard players set temp core_utils_for_each 0
execute if score logon core_setting matches 1 run say Inited scoreboard for core.utils.for_each
