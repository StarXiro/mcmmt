scoreboard players operation temp4 dnb_system = round dnb_system
scoreboard players add temp4 dnb_system 1
execute store result storage mcmmt:dynaball macro_bag.set_main_display.r int 1.0 run scoreboard players get temp4 dnb_system
execute store result storage mcmmt:dynaball macro_bag.set_main_display.mr int 1.0 run scoreboard players get max_round dnb_system
$data modify storage mcmmt:dynaball macro_bag.set_main_display.team set value $(object)
$data modify storage mcmmt:dynaball macro_bag.set_main_display.color set from storage mcmmt:core team_data.$(object).color
function mmt_dynaball:before_match/perform_reset_display with storage mcmmt:dynaball macro_bag.set_main_display