#循环
execute store result score index core_utils_item_check run data get storage mcmmt:core_utils item_check.index
function mmt_core:utils/item_check/private/variable_set with storage mcmmt:core_utils item_check
function mmt_core:utils/item_check/private/numberget with storage mcmmt:core_utils item_check
scoreboard players add index core_utils_item_check 1
execute store result storage mcmmt:core_utils item_check.index int 1 run scoreboard players get index core_utils_item_check
function mmt_core:utils/item_check/private/loop_check with storage mcmmt:core_utils item_check
execute unless score run core_utils_item_check matches 0 run function mmt_core:utils/item_check/private/loop with storage mcmmt:core_utils item_check