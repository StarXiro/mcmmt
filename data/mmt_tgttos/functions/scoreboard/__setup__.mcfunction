#loop
execute store result storage mcmmt:tgttos config.index int 1 run scoreboard players get i tgttos_config
scoreboard players add i tgttos_config 1
function mmt_tgttos:scoreboard/__setup__/variables_set with storage mcmmt:tgttos config
function mmt_tgttos:scoreboard/__setup__/loop_body with storage mcmmt:tgttos scoreboard
execute if data storage mcmmt:tgttos scoreboard.team run function mmt_tgttos:scoreboard/__setup__