
# index

$scoreboard players set round core_utils_make_match $(index)

# check is_even round
scoreboard players set temp core_utils_make_match 2
$scoreboard players set is_even core_utils_make_match $(index)
scoreboard players operation is_even core_utils_make_match %= temp core_utils_make_match

# set zero
data modify storage mcmmt:core_utils make_match.make_round set value []
data modify storage mcmmt:core_utils make_match.macro_bag.for_each.list set from storage mcmmt:core_utils make_match.item_range
data modify storage mcmmt:core_utils make_match.macro_bag.for_each.loop_body set value "mmt_core:utils/make_match/private/set_zero"
function mmt_core:utils/for_each/do with storage mcmmt:core_utils make_match.macro_bag.for_each

# set front pos
execute store result storage mcmmt:core_utils make_match.macro_bag.set_pos.pos int 1.0 run scoreboard players get front_pos core_utils_make_match
execute store result storage mcmmt:core_utils make_match.macro_bag.set_pos.value int 1.0 run scoreboard players get front_value core_utils_make_match

function mmt_core:utils/make_match/private/set_pos with storage mcmmt:core_utils make_match.macro_bag.set_pos

# set max_id pos
execute if score is_even core_utils_make_match matches 1 run scoreboard players set temp core_utils_make_match 0
execute if score is_even core_utils_make_match matches 0 run scoreboard players operation temp core_utils_make_match = item_cnt core_utils_make_match
execute if score is_even core_utils_make_match matches 0 run scoreboard players remove temp core_utils_make_match 1
scoreboard players operation max_id_pos core_utils_make_match = temp core_utils_make_match

execute store result storage mcmmt:core_utils make_match.macro_bag.set_pos.pos int 1.0 run scoreboard players get temp core_utils_make_match
data modify storage mcmmt:core_utils make_match.macro_bag.set_pos.value set from storage mcmmt:core_utils make_match.max_id

function mmt_core:utils/make_match/private/set_pos with storage mcmmt:core_utils make_match.macro_bag.set_pos

# do ring fill
scoreboard players set ring_iter core_utils_make_match 0
scoreboard players operation ring_pos core_utils_make_match = front_pos core_utils_make_match
scoreboard players add ring_pos core_utils_make_match 1
scoreboard players operation ring_value core_utils_make_match = front_value core_utils_make_match
scoreboard players add ring_value core_utils_make_match 1

function mmt_core:utils/make_match/private/ring_iteration

# collect
function mmt_core:utils/make_match/private/collect

# update front
scoreboard players operation front_pos core_utils_make_match = jump core_utils_make_match
execute if score is_even core_utils_make_match matches 0 run data modify storage mcmmt:core_utils make_match.macro_bag.set_pos.pos set value 0
execute store result storage mcmmt:core_utils make_match.macro_bag.set_pos.pos int 1.0 if score is_even core_utils_make_match matches 1 run scoreboard players get ring_mod core_utils_make_match
execute store result score front_value core_utils_make_match run function mmt_core:utils/make_match/private/front_get with storage mcmmt:core_utils make_match.macro_bag.set_pos
