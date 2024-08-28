
# index

# validate index
$scoreboard players set temp dnb_system $(index)
execute if score temp dnb_system >= to_build dnb_system run return run scoreboard players set build_flag dnb_system 1

$data modify storage mcmmt:dynaball temp set from storage mcmmt:dynaball build_slots[$(index)]
# process slot
data modify storage mcmmt:dynaball macro_bag.build_slot merge from storage mcmmt:dynaball temp

# perform build
function mmt_dynaball:build_slots/perform_build with storage mcmmt:dynaball macro_bag.build_slot

# update index
$scoreboard players set temp dnb_system $(index)
scoreboard players add temp dnb_system 1
execute store result storage mcmmt:dynaball macro_bag.build_slot.index int 1.0 run scoreboard players get temp dnb_system

# next build
schedule function mmt_dynaball:build_slots/build_shell 1s append
