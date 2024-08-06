#in loop / i ++
execute store result storage mcmmt:tgttos loop_cnt int 1 run scoreboard players get loop_cnt tgttos_config
function mmt_tgttos:game_process/loop/gamename_set with storage mcmmt:tgttos
function mmt_tgttos:game_process/one_use/team_check with storage mcmmt:tgttos teamcheck
scoreboard players add loop_cnt tgttos_config 1
execute if score loop_cnt tgttos_config matches ..7 run function mmt_tgttos:game_process/loop/loop_check