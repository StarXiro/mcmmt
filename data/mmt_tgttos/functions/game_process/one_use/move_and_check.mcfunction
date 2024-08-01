#check for uuid
data modify storage mcmmt:core_utils uuid_match.UUID set from entity @s LoveCause
function mmt_core:utils/uuid_match_set with storage mcmmt:core_utils uuid_match
execute as @a[tag=player] if function mmt_core:utils/uuid_match_pred run function mmt_tgttos:game_process/one_use/finish_action
effect give @s invisibility infinite 1 true
tp @s ~ ~-99 ~

kill @s