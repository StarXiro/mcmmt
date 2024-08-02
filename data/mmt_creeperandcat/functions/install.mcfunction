#info
execute if score logon core_setting matches 1 run function mmt_tgttos:info

#init
scoreboard objectives add CreeperAndCat dummy
scoreboard objectives add CACconfig dummy
scoreboard objectives add CACkill playerKillCount

summon marker -5000 230 -5000 {CustomName:'{"text":"round_count"}',Tags:[config]}
summon marker -5000 230 -5000 {CustomName:'{"text":"countdown"}',Tags:[map]}
scoreboard players set @e[name="round_count"] CreeperAndCat 0
#scoreboard players set @e[tag=map] map_name 0
scoreboard players set second CACconfig 0

scoreboard objectives add CACdisplay dummy {"text":"Creeper And Cat","color":"gold","bold":true}
scoreboard players reset * CACdisplay

scoreboard objectives modify CACdisplay numberformat blank
scoreboard objectives modify CACdisplay displayautoupdate true

data modify storage creeperandcat map append value Village
data modify storage creeperandcat round append value 1
data modify storage creeperandcat second append value 1


#temp time display
#scoreboard objectives setdisplay list 
#display init
scoreboard players set 玩家数 CACdisplay -5
scoreboard players set 占位2 CACdisplay -4
scoreboard players set 队伍4 CACdisplay -3
scoreboard players set 队伍3 CACdisplay -2
scoreboard players set 队伍2 CACdisplay -1
scoreboard players set 队伍1 CACdisplay 0
scoreboard players set 本游戏积分 CACdisplay 1
#??
scoreboard players set 占位 CACdisplay 3
scoreboard players set 剩余时间 CACdisplay 4
scoreboard players set 当前回合 CACdisplay 5
scoreboard players set 地图 CACdisplay 6
scoreboard players set 游戏进度 CACdisplay 7
scoreboard players display name 占位 CACdisplay [{"text":"  "}]
scoreboard players display name 占位2 CACdisplay [{"text":"  "}]

function mmt_creeperandcat:info