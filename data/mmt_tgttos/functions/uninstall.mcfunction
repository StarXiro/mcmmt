#delete items
scoreboard objectives remove tgttos
kill @e[name="round_count",tag=config]
function mmt_tgttos:stop

#data del
data remove storage mcmmt:tgttos *

#scoreboard del
scoreboard objectives remove tgttos_scoreboard
scoreboard objectives remove tgttos_player_count
scoreboard objectives remove tgttos_finish_count
scoreboard objectives remove tgttos_finish_check
scoreboard objectives remove tgttos
scoreboard objectives remove tgttos_config
scoreboard objectives remove tgttos_player_score
scoreboard objectives remove tgttos_team_score
scoreboard objectives remove tgttos_message_type

#marker del
kill @e[type=marker,tag=config]
kill @e[type=marker,tag=map]
