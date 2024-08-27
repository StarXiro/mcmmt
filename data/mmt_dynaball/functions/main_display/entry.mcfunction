$data modify storage mcmmt:dynaball macro_bag.main_display.color set from storage mcmmt:core team_data.$(object).color
$data modify storage mcmmt:dynaball macro_bag.main_display.team set value $(object)
data modify storage mcmmt:dynaball macro_bag.main_display.p set from storage mcmmt:dynaball start_up.progress
data modify storage mcmmt:dynaball macro_bag.main_display.mp set from storage mcmmt:dynaball start_up.max_progress
function mmt_dynaball:main_display/make_main_display with storage mcmmt:dynaball macro_bag.main_display