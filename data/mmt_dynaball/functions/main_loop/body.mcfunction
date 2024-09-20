
# accomplish !
execute if score round dnb_system >= max_round dnb_system run return run function mmt_dynaball:main_loop/accomplish

# prepare round
function mmt_dynaball:prepare/round_prepare

# before match
function mmt_dynaball:before_match/before_match

# WARN modify game rule
execute store result score #gr_save dnb_system run gamerule commandModificationBlockLimit
gamerule commandModificationBlockLimit 125000000

# build slots
scoreboard players set build_flag dnb_system 0
data modify storage mcmmt:dynaball macro_bag.len.list set from storage mcmmt:dynaball build_slots
execute store result score to_build dnb_system run function mmt_core:utils/len/do with storage mcmmt:dynaball macro_bag.len
data modify storage mcmmt:dynaball macro_bag.build_slot set value {index: 0}
function mmt_dynaball:build_slots/build_shell

# reset game rule
execute store result storage mcmmt:dynaball macro_bag.random.lp int 1.0 run scoreboard players get #gr_save dnb_system
function mmt_dynaball:main_loop/reset_gamerule with storage mcmmt:dynaball macro_bag.random

# increase round
scoreboard players add round dnb_system 1

