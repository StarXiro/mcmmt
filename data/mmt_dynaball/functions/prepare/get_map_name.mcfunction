
# map_id

$data modify storage mcmmt:dynaball temp set from storage mcmmt:dynaball maps[$(map_id)]
data modify storage mcmmt:dynaball macro_bag.make_board.map_name set from storage mcmmt:dynaball temp.map_name
# merge with slot
data modify storage mcmmt:dynaball macro_bag.slot merge from storage mcmmt:dynaball temp
