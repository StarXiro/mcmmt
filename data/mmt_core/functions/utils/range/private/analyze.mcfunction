
# reset list
data modify storage mcmmt:core_utils range.list set value []

# check arg count
execute if data storage mcmmt:core_utils range.args[0] run scoreboard players set argc core_utils_range 1
execute if data storage mcmmt:core_utils range.args[1] run scoreboard players set argc core_utils_range 2
execute if data storage mcmmt:core_utils range.args[2] run scoreboard players set argc core_utils_range 3

# switch
execute if score argc core_utils_range matches 1 run function mmt_core:utils/range/private/argc1
execute if score argc core_utils_range matches 2 run function mmt_core:utils/range/private/argc2
execute if score argc core_utils_range matches 3 run function mmt_core:utils/range/private/argc3

# valid step
execute if score step core_utils_range matches 0 run return fail

# run
execute if score step core_utils_range matches 1.. run function mmt_core:utils/range/private/pos_run
execute if score step core_utils_range matches ..-1 run function mmt_core:utils/range/private/neg_run
