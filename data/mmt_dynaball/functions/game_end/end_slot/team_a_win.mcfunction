
$function mmt_dynaball:scores/add_ts {team: "$(team_a)", type: "win"}

$data modify storage mcmmt:dynaball temp2 set value $(team_data)
data modify storage mcmmt:dynaball macro_bag.end_slot_title.team set from storage mcmmt:dynaball temp2.a_data.display
data modify storage mcmmt:dynaball macro_bag.end_slot_title.tc set from storage mcmmt:dynaball temp2.a_data.color

data modify storage mcmmt:dynaball macro_bag.end_slot_title.color set value "gold"
$data modify storage mcmmt:dynaball macro_bag.end_slot_title.tag set value "$(team_a)"
function mmt_dynaball:game_end/end_slot/show_end with storage mcmmt:dynaball macro_bag.end_slot_title

data modify storage mcmmt:dynaball macro_bag.end_slot_title.color set value "red"
$data modify storage mcmmt:dynaball macro_bag.end_slot_title.tag set value "$(team_b)"
function mmt_dynaball:game_end/end_slot/show_end with storage mcmmt:dynaball macro_bag.end_slot_title

function mmt_dynaball:game_end/end_slot/with_end with storage mcmmt:dynaball save_load
