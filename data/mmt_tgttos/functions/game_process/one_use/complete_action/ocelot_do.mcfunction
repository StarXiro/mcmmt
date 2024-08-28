#check for uuid
data modify storage mcmmt:core_utils uuid_match.UUID set from entity @s LoveCause
function mmt_core:utils/uuid_match/set with storage mcmmt:core_utils uuid_match
execute as @a[tag=tgttos] if function mmt_core:utils/uuid_match/pred run function mmt_tgttos:game_process/one_use/complete_action/finish_action
effect give @s invisibility infinite 1 true
tp @s ~ ~-99 ~

kill @s