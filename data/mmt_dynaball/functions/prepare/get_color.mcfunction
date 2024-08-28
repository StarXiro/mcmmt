
# team_a
# team_b

$data modify storage mcmmt:dynaball macro_bag.make_board.ac set from storage mcmmt:core team_data.$(team_a).color
$data modify storage mcmmt:dynaball macro_bag.make_board.bc set from storage mcmmt:core team_data.$(team_b).color

$data modify storage mcmmt:dynaball macro_bag.make_board.team_a set from storage mcmmt:core team_data.$(team_a).display
$data modify storage mcmmt:dynaball macro_bag.make_board.team_b set from storage mcmmt:core team_data.$(team_b).display
