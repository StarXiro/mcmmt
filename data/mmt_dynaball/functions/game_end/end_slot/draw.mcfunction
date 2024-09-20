
$function mmt_dynaball:scores/add_ts {team: "$(team_a)", type: "draw"}
$function mmt_dynaball:scores/add_ts {team: "$(team_b)", type: "draw"}

$data modify storage mcmmt:dynaball temp2 set value $(team_data)
data modify storage mcmmt:dynaball macro_bag.end_slot_title.team set value "平局？！"
data modify storage mcmmt:dynaball macro_bag.end_slot_title.tc set value "dark_purple"
data modify storage mcmmt:dynaball macro_bag.end_slot_title.color set value "green"

$data modify storage mcmmt:dynaball macro_bag.end_slot_title.tag set value "$(team_b)"
function mmt_dynaball:game_end/end_slot/show_end with storage mcmmt:dynaball macro_bag.end_slot_title

$data modify storage mcmmt:dynaball macro_bag.end_slot_title.tag set value "$(team_a)"
function mmt_dynaball:game_end/end_slot/show_end with storage mcmmt:dynaball macro_bag.end_slot_title

function mmt_dynaball:game_end/end_slot/with_end with storage mcmmt:dynaball save_load
