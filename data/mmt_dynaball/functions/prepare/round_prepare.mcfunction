
# update round
execute store result storage mcmmt:dynaball system.round int 1.0 run scoreboard players get round dnb_system

# get this round
data modify storage mcmmt:dynaball macro_bag.get.pos set from storage mcmmt:dynaball system.round
data modify storage mcmmt:dynaball macro_bag.get.path set value "system.rounds"
function mmt_dynaball:tools/get with storage mcmmt:dynaball macro_bag.get
data modify storage mcmmt:dynaball system.present_round set from storage mcmmt:dynaball macro_bag.get.result

# get match length
data modify storage mcmmt:dynaball macro_bag.len.list set from storage mcmmt:dynaball system.present_round
execute store result score max_match dnb_system run function mmt_core:utils/len/do with storage mcmmt:dynaball macro_bag.len

# EXIT too few slot
execute if score max_slot dnb_system < max_match dnb_system run return run function mmt_dynaball:exception {err: "slots are too few to carry this round!"}

# set partial data for make_board
data modify storage mcmmt:dynaball macro_bag.make_board.p set from storage mcmmt:dynaball system.progress
data modify storage mcmmt:dynaball macro_bag.make_board.max_p set from storage mcmmt:dynaball system.max_progress
scoreboard players operation temp dnb_system = round dnb_system
scoreboard players add temp dnb_system 1
execute store result storage mcmmt:dynaball macro_bag.make_board.r int 1.0 run scoreboard players get temp dnb_system
execute store result storage mcmmt:dynaball macro_bag.make_board.max_r int 1.0 run scoreboard players get max_round dnb_system

# for every match
data modify storage mcmmt:dynaball macro_bag.for_each.list set from storage mcmmt:dynaball system.present_round
data modify storage mcmmt:dynaball macro_bag.for_each.loop_body set value "mmt_dynaball:prepare/match_iter"
function mmt_core:utils/for_each/do with storage mcmmt:dynaball macro_bag.for_each
