#in loop / i ++
$data modify storage mcmmt:tgttos teamcheck.teamname set from storage mcmmt:core teamlist[$(loop_cnt)]
function mmt_tgttos:game_process/one_use/team_check with storage mcmmt:tgttos teamcheck
scoreboard players add loop_cnt tgttos_config 1
execute if score loop_cnt tgttos_config matches ..7 run function mmt_tgttos:game_process/loop/loop_check