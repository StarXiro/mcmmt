$data modify storage mcmmt:dynaball temp2 set from storage mcmmt:dynaball game_scores.$(type)
$data modify storage mcmmt:dynaball temp2.team set value $(team)
function mmt_dynaball:scores/macro_add_ts with storage mcmmt:dynaball temp2