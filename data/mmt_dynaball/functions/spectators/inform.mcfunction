
tag @a[tag=dnb_spec] remove dnb_player
title @a[tag=dnb_spec] title {"type": "text", "text": "本轮将作为旁观者参加", "color": "gray"}

scoreboard objectives add dnb_spec_display dummy {"type": "text", "text": "Dynaball", "color": "gray", "bold": true}
scoreboard objectives modify dnb_spec_display numberformat blank

# set gray team to spec team by default
scoreboard objectives setdisplay sidebar.team.gray dnb_spec_display
# get team color
function mmt_dynaball:spectators/team_color with storage mcmmt:dynaball macro_bag.spec_display

# move data
data modify storage mcmmt:dynaball macro_bag.spec_display.p set from storage mcmmt:dynaball system.progress
data modify storage mcmmt:dynaball macro_bag.spec_display.mp set from storage mcmmt:dynaball system.max_progress
data modify storage mcmmt:dynaball macro_bag.spec_display.r set from storage mcmmt:dynaball macro_bag.make_board.r
data modify storage mcmmt:dynaball macro_bag.spec_display.mr set from storage mcmmt:dynaball macro_bag.make_board.max_r

function mmt_dynaball:spectators/base_build with storage mcmmt:dynaball macro_bag.spec_display

# build teams
scoreboard players set temp2 dnb_system 100
data modify storage mcmmt:dynaball macro_bag.for_each.list set from storage mcmmt:dynaball games
data modify storage mcmmt:dynaball macro_bag.for_each.loop_body set value "mmt_dynaball:spectators/build_teams"
function mmt_core:utils/for_each/do with storage mcmmt:dynaball macro_bag.for_each

# build trigger
scoreboard objectives add dnb_spec_tp_trigger trigger
