
# index out of range
execute store result storage mcmmt:core_utils for_each.macro_bag.args.index int 1.0 run scoreboard players get iter core_utils_for_each
function mmt_core:utils/for_each/private/eol_pred with storage mcmmt:core_utils for_each.macro_bag.args
execute if score temp core_utils_for_each matches 0 run return fail

# get object
function mmt_core:utils/for_each/private/select_object with storage mcmmt:core_utils for_each.macro_bag.args
# do body
function mmt_core:utils/for_each/private/perform_body with storage mcmmt:core_utils for_each.macro_bag

# increase index & loop
scoreboard players add iter core_utils_for_each 1
function mmt_core:utils/for_each/private/obj_list_iter
