data remove storage mcmmt:core_utils item_check.subject
$data modify storage mcmmt:core_utils item_check.subject set from storage mcmmt:core_utils item_check.sbj[$(index)]
execute unless data storage mcmmt:core_utils item_check.subject run scoreboard players set run core_utils_item_check 0