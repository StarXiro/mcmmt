
# get front
data modify storage mcmmt:core_utils for_each.stack_bag set from storage mcmmt:core_utils for_each.stack[0]

# release frame
execute store result score iter core_utils_for_each run data get storage mcmmt:core_utils for_each.stack_bag.index
data modify storage mcmmt:core_utils for_each.list set from storage mcmmt:core_utils for_each.stack_bag.list
data modify storage mcmmt:core_utils for_each.macro_bag.loop_body set from storage mcmmt:core_utils for_each.stack_bag.loop_body

# pop index
data remove storage mcmmt:core_utils for_each.macro_bag.args.extra_index[0]
# pop stack
data remove storage mcmmt:core_utils for_each.stack[0]
