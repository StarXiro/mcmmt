#info
execute if score logon core_setting matches 1 run function mmt_tgttos:info

#initialize
scoreboard objectives add tgttos dummy
scoreboard objectives add tgttosconfig dummy
summon marker 10000 100 10000 {CustomName:'{"text":"round_count"}',Tags:[config]} 
summon marker 10000 100 10000 {CustomName:'{"text":"cod in the sea"}',Tags:[map]} 
scoreboard players set @e[name="round_count"] tgttos 0
scoreboard players set @e[tag=map] map_name 0

#scoreboard initialize
#scoreboard objectives remove tgttosscoreboard
scoreboard objectives add tgttosscoreboard dummy {"text":"TGTTOS","color":"gold","bold":true}
scoreboard players reset * tgttosscoreboard
#scoreboard players reset 当前版本 tgttosscoreboard
scoreboard objectives modify tgttosscoreboard numberformat blank
scoreboard objectives modify tgttosscoreboard displayautoupdate true

#sidplay initialization
scoreboard players set 玩家数 tgttosscoreboard -5
scoreboard players set 占位2 tgttosscoreboard -4
scoreboard players set 队伍4 tgttosscoreboard -3
scoreboard players set 队伍3 tgttosscoreboard -2
scoreboard players set 队伍2 tgttosscoreboard -1
scoreboard players set 队伍1 tgttosscoreboard 0
scoreboard players set 游戏积分 tgttosscoreboard 1
#scoreboard players set 小鱼干 tgttosscoreboard 2
scoreboard players set 占位 tgttosscoreboard 3
scoreboard players set 剩余时间 tgttosscoreboard 4 
scoreboard players set 当前回合 tgttosscoreboard 5
scoreboard players set 当前地图 tgttosscoreboard 6
scoreboard players set 游戏进度 tgttosscoreboard 7
scoreboard players display name 占位 tgttosscoreboard [{"text":"  "}]
scoreboard players display name 占位2 tgttosscoreboard [{"text":"  "}]