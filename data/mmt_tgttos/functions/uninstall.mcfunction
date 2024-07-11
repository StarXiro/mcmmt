#delete items
scoreboard objectives remove tgttos
kill @e[name="round_count",tag=config]

#data del
data remove storage tgttosscoreboard *

#scoreboard del
scoreboard objectives remove tgttosscoreboard
scoreboard objectives remove player_count
scoreboard objectives remove finish_count
scoreboard objectives remove tgttos
scoreboard objectives remove tgttosconfig

#marker del
kill @e[type=marker,tag=config]
kill @e[type=marker,tag=map]

#scoreboard other configs
scoreboard players display name 游戏积分 tgttosscoreboard {"text":"本游戏积分:","color":"aqua"}