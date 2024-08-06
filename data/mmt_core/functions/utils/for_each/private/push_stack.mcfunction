
# make bag
data modify storage mcmmt:core_utils for_each.stack_bag.list set from storage mcmmt:core_utils for_each.list
execute store result storage mcmmt:core_utils for_each.stack_bag.index int 1.0 run scoreboard players get iter core_utils_for_each
data modify storage mcmmt:core_utils for_each.stack_bag.loop_body set from storage mcmmt:core_utils for_each.macro_bag.loop_body

# push index
data modify storage mcmmt:core_utils for_each.macro_bag.args.extra_index prepend from storage mcmmt:core_utils for_each.stack_bag.index

# push bag
data modify storage mcmmt:core_utils for_each.stack prepend from storage mcmmt:core_utils for_each.stack_bag
