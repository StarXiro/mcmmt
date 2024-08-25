
# accomplish !
execute if score round dnb_system >= max_round dnb_system run return run function mmt_dynaball:main_loop/accomplish

# reset player tag
tag @a[tag=dnb_player] remove team_a
tag @a[tag=dnb_player] remove team_b
# reset dnb_slot_$(index)
data modify storage mcmmt:dynaball macro_bag.for_each.list set from storage mcmmt:dynaball games
data modify storage mcmmt:dynaball macro_bag.for_each.loop_body set value "mmt_dynaball:main_loop/reset_tag"
function mmt_core:utils/for_each/do with storage mcmmt:dynaball macro_bag.for_each

# reset last round
schedule clear mmt_dynaball:dmg_source/frame
schedule clear mmt_dynaball:stuck/frame
schedule clear mmt_dynaball:collision/frame
schedule clear mmt_dynaball:air_drop/frame
schedule clear mmt_dynaball:weapons/frame
schedule clear mmt_dynaball:tnt_proj/frame
data modify storage mcmmt:dynaball matches set value []
data modify storage mcmmt:dynaball games set value []
data modify storage mcmmt:dynaball build_slots set value []
data modify storage mcmmt:dynaball board_saves set value []
scoreboard players operation #waiting dnb_system = #wait_length dnb_system
scoreboard players set @a[tag=dnb_player] dnb_dmg_source -1
scoreboard players set @a[tag=dnb_player] dnb_dmg_valid 0

# reset generated display
data modify storage mcmmt:dynaball macro_bag.for_each.list set from storage mcmmt:dynaball system.board_names
data modify storage mcmmt:dynaball macro_bag.for_each.loop_body set value "mmt_dynaball:main_loop/reset_display"
function mmt_core:utils/for_each/do with storage mcmmt:dynaball macro_bag.for_each
data modify storage mcmmt:dynaball system.board_names set value []

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

