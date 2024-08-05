#info
execute if score logon core_setting matches 1 run function mmt_tgttos:info

#initialize
scoreboard objectives add tgttos_player_count dummy
scoreboard objectives add tgttos_finish_count dummy
scoreboard objectives add tgttos dummy
scoreboard objectives add tgttos_config dummy
scoreboard players set round_count tgttos 0
scoreboard players set @e[tag=map] map_name 0
scoreboard players set secs tgttos 1200
scoreboard players set secs2 tgttos 20

#data initialize
data modify storage mcmmt:tgttos max_score set value 32

#scoreboard display initialization
scoreboard objectives add tgttos_scoreboard dummy {"text":"TGTTOSAFTC","color":"gold","bold":true}
summon marker 10000 100 10000 {CustomName:'{"text":"codake"}',Tags:[map]} 
scoreboard players reset * tgttos_scoreboard
scoreboard objectives modify tgttos_scoreboard numberformat blank
scoreboard objectives modify tgttos_scoreboard displayautoupdate true
scoreboard players set 玩家数 tgttos_scoreboard -5
scoreboard players set 占位2 tgttos_scoreboard -4
scoreboard players set 队伍4 tgttos_scoreboard -3
scoreboard players set 队伍3 tgttos_scoreboard -2
scoreboard players set 队伍2 tgttos_scoreboard -1
scoreboard players set 队伍1 tgttos_scoreboard 0
scoreboard players set 游戏积分 tgttos_scoreboard 1
scoreboard players set 占位 tgttos_scoreboard 3
scoreboard players set 剩余时间 tgttos_scoreboard 4 
scoreboard players set 当前回合 tgttos_scoreboard 5
scoreboard players set 当前地图 tgttos_scoreboard 6
scoreboard players set 游戏进度 tgttos_scoreboard 7
scoreboard players display name 占位 tgttos_scoreboard [{"text":"  "}]
scoreboard players display name 占位2 tgttos_scoreboard [{"text":"  "}]
scoreboard objectives add tgttos_finish_check dummy
scoreboard players reset * tgttos_finish_count
scoreboard players set @a[tag=player] tgttos_finish_count 0

#scoreboard other configs
scoreboard players display name 游戏积分 tgttos_scoreboard {"text":"本游戏积分:","color":"aqua"}