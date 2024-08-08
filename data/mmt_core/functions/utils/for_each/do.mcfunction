
# list object list
# loop_body function path

# exit if not installed
execute unless data storage mcmmt:core installed run return fail

# push stack
execute store result score temp core_utils_for_each run data get storage mcmmt:core_utils for_each.depth 1.0
execute if score temp core_utils_for_each matches 1.. run function mmt_core:utils/for_each/private/push_stack

# add depth
scoreboard players add temp core_utils_for_each 1
execute store result storage mcmmt:core_utils for_each.depth int 1.0 run scoreboard players get temp core_utils_for_each

# load args
$data modify storage mcmmt:core_utils for_each.list set value $(list)
$data modify storage mcmmt:core_utils for_each.macro_bag.loop_body set value "$(loop_body)"
scoreboard players set iter core_utils_for_each 0

# enter loop
function mmt_core:utils/for_each/private/obj_list_iter

# end loop
execute store result score temp core_utils_for_each run data get storage mcmmt:core_utils for_each.depth 1.0
execute if score temp core_utils_for_each matches 2.. run function mmt_core:utils/for_each/private/pop_stack

# decline depth
scoreboard players remove temp core_utils_for_each 1
execute store result storage mcmmt:core_utils for_each.depth int 1.0 run scoreboard players get temp core_utils_for_each
