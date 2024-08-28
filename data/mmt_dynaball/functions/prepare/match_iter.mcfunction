
# index
# object

$data modify storage mcmmt:dynaball temp set value $(object)
$data modify storage mcmmt:dynaball macro_bag.game.game_id set value $(index)
$data modify storage mcmmt:dynaball macro_bag.make_board.game_id set value $(index)
$data modify storage mcmmt:dynaball macro_bag.slot set from storage mcmmt:dynaball map_slots[$(index)]

execute unless data storage mcmmt:dynaball temp.empty_round run function mmt_dynaball:prepare/true_round
execute if data storage mcmmt:dynaball temp.empty_round run function mmt_dynaball:prepare/empty_round
