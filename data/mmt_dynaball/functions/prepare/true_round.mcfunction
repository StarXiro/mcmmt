
# add tag to players
data modify storage mcmmt:dynaball macro_bag.team_tag.team set from storage mcmmt:dynaball temp.teams[0]
data modify storage mcmmt:dynaball macro_bag.team_tag.tag set value "team_a"
function mmt_dynaball:prepare/tag_team_player with storage mcmmt:dynaball macro_bag.team_tag
data modify storage mcmmt:dynaball macro_bag.team_tag.team set from storage mcmmt:dynaball temp.teams[1]
data modify storage mcmmt:dynaball macro_bag.team_tag.tag set value "team_b"
function mmt_dynaball:prepare/tag_team_player with storage mcmmt:dynaball macro_bag.team_tag

# collect data to game
data modify storage mcmmt:dynaball macro_bag.game.team_a set from storage mcmmt:dynaball temp.teams[0]
data modify storage mcmmt:dynaball macro_bag.game.team_b set from storage mcmmt:dynaball temp.teams[1]
data modify storage mcmmt:dynaball macro_bag.random.lp set value 0
execute store result storage mcmmt:dynaball macro_bag.random.rp int 1.0 run scoreboard players get max_map_id dnb_system
execute store result storage mcmmt:dynaball macro_bag.game.map_id int 1.0 run function mmt_dynaball:tools/random with storage mcmmt:dynaball macro_bag.random

# collect data to make_board
data modify storage mcmmt:dynaball macro_bag.make_board.team_a set from storage mcmmt:dynaball temp.teams[0]
data modify storage mcmmt:dynaball macro_bag.make_board.team_b set from storage mcmmt:dynaball temp.teams[1]
# get color
function mmt_dynaball:prepare/get_color with storage mcmmt:dynaball macro_bag.make_board
# get map_name
function mmt_dynaball:prepare/get_map_name with storage mcmmt:dynaball macro_bag.game

# make boards
function mmt_dynaball:prepare/make_board with storage mcmmt:dynaball macro_bag.make_board
data modify storage mcmmt:dynaball board_saves append from storage mcmmt:dynaball macro_bag.make_board

# append games
data modify storage mcmmt:dynaball games append from storage mcmmt:dynaball macro_bag.game
# append slot
data modify storage mcmmt:dynaball build_slots append from storage mcmmt:dynaball macro_bag.slot
