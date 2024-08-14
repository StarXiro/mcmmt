
# make round_range
scoreboard players operation temp core_utils_make_match = length core_utils_make_match
scoreboard players set temp2 core_utils_make_match 2
scoreboard players operation temp core_utils_make_match %= temp2 core_utils_make_match
scoreboard players operation max_round core_utils_make_match = length core_utils_make_match
execute if score temp core_utils_make_match matches 1 run scoreboard players add max_round core_utils_make_match 1
scoreboard players operation max_pair core_utils_make_match = max_round core_utils_make_match
scoreboard players operation item_cnt core_utils_make_match = max_round core_utils_make_match
scoreboard players remove max_round core_utils_make_match 1

execute store result storage mcmmt:core_utils make_match.temp int 1.0 run scoreboard players get max_round core_utils_make_match
data modify storage mcmmt:core_utils make_match.macro_bag.range.args set value []
data modify storage mcmmt:core_utils make_match.macro_bag.range.args append from storage mcmmt:core_utils make_match.temp

function mmt_core:utils/range/do with storage mcmmt:core_utils make_match.macro_bag.range
data modify storage mcmmt:core_utils make_match.round_range set from storage mcmmt:core_utils range.list

# make pair_range
scoreboard players operation max_pair core_utils_make_match /= temp2 core_utils_make_match

execute store result storage mcmmt:core_utils make_match.temp int 1.0 run scoreboard players get max_pair core_utils_make_match
data modify storage mcmmt:core_utils make_match.macro_bag.range.args set value []
data modify storage mcmmt:core_utils make_match.macro_bag.range.args append from storage mcmmt:core_utils make_match.temp

function mmt_core:utils/range/do with storage mcmmt:core_utils make_match.macro_bag.range
data modify storage mcmmt:core_utils make_match.pair_range set from storage mcmmt:core_utils range.list

# make item_range
execute store result storage mcmmt:core_utils make_match.temp int 1.0 run scoreboard players get item_cnt core_utils_make_match
data modify storage mcmmt:core_utils make_match.macro_bag.range.args set value []
data modify storage mcmmt:core_utils make_match.macro_bag.range.args append from storage mcmmt:core_utils make_match.temp

function mmt_core:utils/range/do with storage mcmmt:core_utils make_match.macro_bag.range
data modify storage mcmmt:core_utils make_match.item_range set from storage mcmmt:core_utils range.list

# calc jump
scoreboard players set temp2 core_utils_make_match 2
scoreboard players operation temp core_utils_make_match = length core_utils_make_match
scoreboard players operation temp core_utils_make_match %= temp2 core_utils_make_match
scoreboard players operation temp2 core_utils_make_match = length core_utils_make_match
scoreboard players operation temp2 core_utils_make_match += temp core_utils_make_match
scoreboard players remove temp2 core_utils_make_match 4
scoreboard players set temp core_utils_make_match 2
scoreboard players operation temp2 core_utils_make_match /= temp core_utils_make_match
scoreboard players operation jump core_utils_make_match = temp2 core_utils_make_match
scoreboard players add jump core_utils_make_match 1

# set maxid
scoreboard players set temp core_utils_make_match 2
scoreboard players operation temp2 core_utils_make_match = length core_utils_make_match
scoreboard players operation temp2 core_utils_make_match %= temp core_utils_make_match
execute if score temp2 core_utils_make_match matches 0 run function mmt_core:utils/make_match/private/max_id_even
execute if score temp2 core_utils_make_match matches 1 run data modify storage mcmmt:core_utils make_match.max_id set value -1
execute store result score max_id core_utils_make_match run data get storage mcmmt:core_utils make_match.max_id 1.0

# init front
scoreboard players set front_pos core_utils_make_match 0
scoreboard players set front_value core_utils_make_match 0

scoreboard players operation ring_mod core_utils_make_match = item_cnt core_utils_make_match
scoreboard players remove ring_mod core_utils_make_match 1

# first loop: round
data modify storage mcmmt:core_utils make_match.macro_bag.for_each.list set from storage mcmmt:core_utils make_match.round_range
data modify storage mcmmt:core_utils make_match.macro_bag.for_each.loop_body set value "mmt_core:utils/make_match/private/round_loop"
function mmt_core:utils/for_each/do with storage mcmmt:core_utils make_match.macro_bag.for_each
