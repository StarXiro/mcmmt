
# add iter
scoreboard players add ring_iter core_utils_make_match 1

# exit loop
execute if score ring_iter core_utils_make_match > ring_mod core_utils_make_match run return fail

# limit pos
scoreboard players operation ring_pos core_utils_make_match %= item_cnt core_utils_make_match
scoreboard players operation ring_value core_utils_make_match %= ring_mod core_utils_make_match

# check
execute store result storage mcmmt:core_utils make_match.macro_bag.set_pos.pos int 1.0 run scoreboard players get ring_pos core_utils_make_match
function mmt_core:utils/make_match/private/ring_check

# add pos whatever
scoreboard players add ring_pos core_utils_make_match 1

# next loop
function mmt_core:utils/make_match/private/ring_iteration
