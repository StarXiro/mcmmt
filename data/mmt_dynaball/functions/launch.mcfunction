
# add force_load
data modify storage mcmmt:dynaball macro_bag.for_each.list set from storage mcmmt:dynaball start_up.force_load
data modify storage mcmmt:dynaball macro_bag.for_each.loop_body set value "mmt_dynaball:prepare/add_force_load"
function mmt_core:utils/for_each/do with storage mcmmt:dynaball macro_bag.for_each

# add tag dnb_player for all team_members
data modify storage mcmmt:dynaball macro_bag.for_each.list set from storage mcmmt:dynaball start_up.team_list
data modify storage mcmmt:dynaball macro_bag.for_each.loop_body set value "mmt_dynaball:prepare/tag_all_player"
function mmt_core:utils/for_each/do with storage mcmmt:dynaball macro_bag.for_each

# shuffle team_list
data modify storage mcmmt:dynaball macro_bag.shuffle.list set from storage mcmmt:dynaball start_up.team_list
function mmt_core:utils/shuffle/do with storage mcmmt:dynaball macro_bag.shuffle
data modify storage mcmmt:dynaball temp set from storage mcmmt:core_utils shuffle.list

# make_match
data modify storage mcmmt:dynaball macro_bag.make_match.list set from storage mcmmt:dynaball temp
function mmt_core:utils/make_match/make with storage mcmmt:dynaball macro_bag.make_match
data modify storage mcmmt:dynaball system.rounds set from storage mcmmt:core_utils make_match.rounds

# get max_round
data modify storage mcmmt:dynaball macro_bag.shuffle.list set from storage mcmmt:dynaball system.rounds
execute store result score max_round dnb_system run function mmt_core:utils/len/do with storage mcmmt:dynaball macro_bag.shuffle

# get max_map_id
data modify storage mcmmt:dynaball macro_bag.shuffle.list set from storage mcmmt:dynaball maps
execute store result score max_map_id dnb_system run function mmt_core:utils/len/do with storage mcmmt:dynaball macro_bag.shuffle
scoreboard players remove max_map_id dnb_system 1

# get max_slot
data modify storage mcmmt:dynaball macro_bag.len.list set from storage mcmmt:dynaball map_slots
execute store result score max_slot dnb_system run function mmt_core:utils/len/do with storage mcmmt:dynaball macro_bag.len

# get rand item len
data modify storage mcmmt:dynaball macro_bag.len.list set from storage mcmmt:dynaball weapons
execute store result score #rand_item_len dnb_system run function mmt_core:utils/len/do with storage mcmmt:dynaball macro_bag.len
scoreboard players remove #rand_item_len dnb_system 1

# move progress
data modify storage mcmmt:dynaball system.progress set from storage mcmmt:dynaball start_up.progress
data modify storage mcmmt:dynaball system.max_progress set from storage mcmmt:dynaball start_up.max_progress

# TODO fix, separate boards with team rank
# create main_display
function mmt_dynaball:prepare/make_main_display with storage mcmmt:dynaball system

# reset round
data modify storage mcmmt:dynaball round set value 0
scoreboard players set round dnb_system 0

# enter round loop
function mmt_dynaball:main_loop/body
