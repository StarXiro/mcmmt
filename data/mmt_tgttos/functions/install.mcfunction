#info
execute if score logon core_setting matches 1 run function mmt_tgttos:info

#initialize
scoreboard objectives add tgttos_player_count dummy
scoreboard objectives add tgttos_finish_count dummy
scoreboard objectives add tgttos dummy
scoreboard objectives add tgttosconfig dummy
scoreboard players set round_count tgttos 0
scoreboard players set @e[tag=map] map_name 0

#scoreboard display initialization
scoreboard objectives add tgttosscoreboard dummy {"text":"TGTTOSAFTC","color":"gold","bold":true}
summon marker 10000 100 10000 {CustomName:'{"text":"codake"}',Tags:[map]} 
scoreboard players reset * tgttosscoreboard
scoreboard objectives modify tgttosscoreboard numberformat blank
scoreboard objectives modify tgttosscoreboard displayautoupdate true
scoreboard players set 玩家数 tgttosscoreboard -5
scoreboard players set 占位2 tgttosscoreboard -4
scoreboard players set 队伍4 tgttosscoreboard -3
scoreboard players set 队伍3 tgttosscoreboard -2
scoreboard players set 队伍2 tgttosscoreboard -1
scoreboard players set 队伍1 tgttosscoreboard 0
scoreboard players set 游戏积分 tgttosscoreboard 1
scoreboard players set 占位 tgttosscoreboard 3
scoreboard players set 剩余时间 tgttosscoreboard 4 
scoreboard players set 当前回合 tgttosscoreboard 5
scoreboard players set 当前地图 tgttosscoreboard 6
scoreboard players set 游戏进度 tgttosscoreboard 7
scoreboard players display name 占位 tgttosscoreboard [{"text":"  "}]
scoreboard players display name 占位2 tgttosscoreboard [{"text":"  "}]
scoreboard objectives add finish_check dummy
scoreboard objectives add LoveCause dummy
scoreboard players reset * tgttos_finish_count
scoreboard players set @a[tag=player] tgttos_finish_count 0

#scoreboard other configs
scoreboard players display name 游戏积分 tgttosscoreboard {"text":"本游戏积分:","color":"aqua"}