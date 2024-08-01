#delete items
scoreboard objectives remove tgttos
kill @e[name="round_count",tag=config]
function mmt_tgttos:stop

#data del
data remove storage tgttos_scoreboard *

#scoreboard del
scoreboard objectives remove tgttos_scoreboard
scoreboard objectives remove tgttos_player_count
scoreboard objectives remove tgttos_finish_count
scoreboard objectives remove tgttos
scoreboard objectives remove tgttos_config

#marker del
kill @e[type=marker,tag=config]
kill @e[type=marker,tag=map]
