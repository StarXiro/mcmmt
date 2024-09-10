data modify storage mcmmt:dynaball macro_bag.end_slot_bc.a set from storage mcmmt:dynaball temp2.a_data.display
data modify storage mcmmt:dynaball macro_bag.end_slot_bc.ac set from storage mcmmt:dynaball temp2.a_data.color
data modify storage mcmmt:dynaball macro_bag.end_slot_bc.b set from storage mcmmt:dynaball temp2.b_data.display
data modify storage mcmmt:dynaball macro_bag.end_slot_bc.bc set from storage mcmmt:dynaball temp2.b_data.color
function mmt_dynaball:game_end/end_slot/show_broadcast with storage mcmmt:dynaball macro_bag.end_slot_bc
$execute as @a[tag=dnb_player, tag=$(slot_tag)] run tp @s $(spec_tp)
$execute as @a[tag=dnb_player, tag=$(slot_tag)] at @s run function mmt_dynaball:game_end/end_slot/change_spec
data remove storage mcmmt:dynaball save_load.running
scoreboard players remove ongoing_games dnb_system 1