
execute if score ring_pos core_utils_make_match = max_id_pos core_utils_make_match run return fail

execute store result storage mcmmt:core_utils make_match.macro_bag.set_pos.value int 1.0 run scoreboard players get ring_value core_utils_make_match
function mmt_core:utils/make_match/private/set_pos with storage mcmmt:core_utils make_match.macro_bag.set_pos

scoreboard players add ring_value core_utils_make_match 1
