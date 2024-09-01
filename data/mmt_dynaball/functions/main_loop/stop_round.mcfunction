
# reset temporary gray team members to their own teams
data modify storage mcmmt:dynaball macro_bag.for_each.list set from storage mcmmt:dynaball start_up.team_list
data modify storage mcmmt:dynaball macro_bag.for_each.loop_body set value "mmt_dynaball:main_loop/reset_team"
function mmt_core:utils/for_each/do with storage mcmmt:dynaball macro_bag.for_each

# reset player tag
execute as @a[tag=dnb_spec] run tag @s add dnb_player

# reset effect
effect clear @a[tag=dnb_player] minecraft:saturation
effect clear @a[tag=dnb_player] minecraft:resistance

tag @a[tag=dnb_player] remove dnb_spec
tag @a[tag=dnb_player] remove team_a
tag @a[tag=dnb_player] remove team_b
tag @a[tag=dnb_player] remove dnb_broadcast

# reset gamemode
gamemode adventure @a[tag=dnb_player]

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
scoreboard players set ongoing_games dnb_system 0
scoreboard players set @a[tag=dnb_player] dnb_dmg_source -1
scoreboard players set @a[tag=dnb_player] dnb_dmg_valid 0

# reset generated display
data modify storage mcmmt:dynaball macro_bag.for_each.list set from storage mcmmt:dynaball system.board_names
data modify storage mcmmt:dynaball macro_bag.for_each.loop_body set value "mmt_dynaball:main_loop/reset_display"
function mmt_core:utils/for_each/do with storage mcmmt:dynaball macro_bag.for_each
data modify storage mcmmt:dynaball system.board_names set value []

# remove generated spec display
scoreboard objectives remove dnb_spec_display

# remove spec trigger
scoreboard players reset @a dnb_spec_tp_trigger
scoreboard objectives remove dnb_spec_tp_trigger

# remove all planned frame
schedule clear mmt_dynaball:air_drop/frame
schedule clear mmt_dynaball:dmg_source/frame
schedule clear mmt_dynaball:stuck/frame
schedule clear mmt_dynaball:collision/frame
schedule clear mmt_dynaball:weapons/frame
schedule clear mmt_dynaball:tnt_proj/frame
schedule clear mmt_dynaball:spectators/frame
schedule clear mmt_dynaball:game_body/gl_tick/frame
schedule clear mmt_dynaball:game_body/gl_tick/frame_second
schedule clear mmt_dynaball:game_body/sl_tick/frame
schedule clear mmt_dynaball:game_body/sl_tick/frame_second
schedule clear mmt_dynaball:before_match/loop_per_sec
schedule clear mmt_dynaball:spectators/trigger_safe

# remove cg
schedule clear mmt_dynaball:cg/cg_second
schedule clear mmt_dynaball:cg/cg_tick
