# object
$data modify storage mcmmt:dynaball macro_bag.set_main_display.team set value $(object)
$data modify storage mcmmt:dynaball macro_bag.set_main_display.color set from storage mcmmt:core team_data.$(object).color
function mmt_dynaball:before_match/perform_reset_display with storage mcmmt:dynaball macro_bag.set_main_display