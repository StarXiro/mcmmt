#给每个对象应该修改的物品数量进行传参
execute store result storage mcmmt:core_utils item_check.count int 1 run scoreboard players get @s core_utils_item_check_count
function mmt_core:utils/item_check/private/item_give with storage mcmmt:core_utils item_check