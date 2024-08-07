#info
execute if score logon core_setting matches 1 run function mmt_tgttos:info

#initialize
scoreboard objectives add tgttos_player_count dummy
scoreboard objectives add tgttos_finish_count dummy
scoreboard objectives add tgttos dummy
scoreboard objectives add tgttos_config dummy
scoreboard objectives add tgttos_team_score dummy
scoreboard objectives add tgttos_player_score dummy
scoreboard players set round_count tgttos 0
scoreboard players set @e[tag=map] map_name 0
scoreboard players set secs tgttos 1200
scoreboard players set secs2 tgttos 20

#data initialize
data modify storage mcmmt:tgttos max_score set value 50
data modify storage mcmmt:tgttos scorelist.reward set value [0,120,100,80,65,50,40,30,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
data modify storage mcmmt:tgttos scorelist.reward2 set value [0,160,120,80,0,0,0,0,0]
data modify storage mcmmt:tgttos death.messagelist set value ["","对猫毛过敏。","不认为自己可以成功到达另一边。","脚下一滑。","接受了深渊的召唤。","摔的七荤八素。","抛弃了ta心爱的方块。","的键盘似乎出了一些问题。","操作不当。","被苦力怕附身了。","使用了信仰之跃，但结果不太令人满意。"]

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