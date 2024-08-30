data modify storage mcmmt:dynaball save_load set value {}
$function mmt_dynaball:game_body/build_sl $(object)
$data modify storage mcmmt:dynaball games[$(index)].sl set from storage mcmmt:dynaball save_load
$data remove storage mcmmt:dynaball games[$(index)].cg