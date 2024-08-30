$data modify storage mcmmt:dynaball save_load set from storage mcmmt:dynaball games[$(index)].sl
function mmt_dynaball:game_body/sl_tick/main_tick
$data modify storage mcmmt:dynaball games[$(index)].sl set from storage mcmmt:dynaball save_load