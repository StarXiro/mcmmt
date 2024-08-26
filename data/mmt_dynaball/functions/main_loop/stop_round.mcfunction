
# reset player tag
tag @a[tag=dnb_player] remove team_a
tag @a[tag=dnb_player] remove team_b
# reset dnb_slot_$(index)
data modify storage mcmmt:dynaball macro_bag.for_each.list set from storage mcmmt:dynaball games
data modify storage mcmmt:dynaball macro_bag.for_each.loop_body set value "mmt_dynaball:main_loop/reset_tag"
function mmt_core:utils/for_each/do with storage mcmmt:dynaball macro_bag.for_each

# reset storage for last round
data modify storage mcmmt:dynaball matches set value []
data modify storage mcmmt:dynaball games set value []
data modify storage mcmmt:dynaball build_slots set value []
data modify storage mcmmt:dynaball board_saves set value []
scoreboard players operation #waiting dnb_system = #wait_length dnb_system
scoreboard players set checker_index dnb_system 0
scoreboard players set @a[tag=dnb_player] dnb_dmg_source -1
scoreboard players set @a[tag=dnb_player] dnb_dmg_valid 0

# reset generated display
data modify storage mcmmt:dynaball macro_bag.for_each.list set from storage mcmmt:dynaball system.board_names
data modify storage mcmmt:dynaball macro_bag.for_each.loop_body set value "mmt_dynaball:main_loop/reset_display"
function mmt_core:utils/for_each/do with storage mcmmt:dynaball macro_bag.for_each
data modify storage mcmmt:dynaball system.board_names set value []

# remove all planned frame
schedule clear mmt_dynaball:air_drop/frame
schedule clear mmt_dynaball:dmg_source/frame
schedule clear mmt_dynaball:stuck/frame
schedule clear mmt_dynaball:collision/frame
schedule clear mmt_dynaball:weapons/frame
schedule clear mmt_dynaball:tnt_proj/frame

# remove cg
schedule clear mmt_dynaball:cg/cg_second
schedule clear mmt_dynaball:cg/cg_tick
