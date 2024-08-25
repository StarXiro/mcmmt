#对单个item和对应的count进行跟踪以及计算
$execute as $(subject) store result score @s core_utils_item_check_number run clear @s $(object) 0
$execute as $(subject) store result score @s core_utils_item_check_count run data get storage mcmmt:core_utils item_check.count
$execute as $(subject) run scoreboard players operation @s core_utils_item_check_count -= @s core_utils_item_check_number
$execute as $(subject) run function mmt_core:utils/item_check/private/trans