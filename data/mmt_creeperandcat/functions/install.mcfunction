#info
#execute if score logon core_setting matches 1 run function mmt_tgttos:info

#init
scoreboard objectives add CreeperAndCat dummy
scoreboard objectives add CACconfig dummy
scoreboard objectives add CACkill playerKillCount
scoreboard objectives add CACdeath deathCount
scoreboard objectives add CACkillid dummy

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

data modify storage mcmmt:creeperandcat teampre.1 append value "-4987 119 -4967"
data modify storage mcmmt:creeperandcat teampre.1 append value "-4951 119 -4967"
data modify storage mcmmt:creeperandcat teampre.2 append value "-5087 119 -4967"
data modify storage mcmmt:creeperandcat teampre.2 append value "-5051 119 -4967"
data modify storage mcmmt:creeperandcat teampre.3 append value "-5187 119 -4967"
data modify storage mcmmt:creeperandcat teampre.3 append value "-5151 119 -4967"
data modify storage mcmmt:creeperandcat teampre.4 append value "-5287 119 -4967"
data modify storage mcmmt:creeperandcat teampre.4 append value "-5251 119 -4967"

data modify storage mcmmt:creeperandcat cat append value "-4951 103 -4967"
data modify storage mcmmt:creeperandcat cat append value "-4951 103 -5067"
data modify storage mcmmt:creeperandcat cat append value "-5051 103 -4967"
data modify storage mcmmt:creeperandcat cat append value "-5051 103 -5067"
data modify storage mcmmt:creeperandcat cat append value "-5151 103 -4967"
data modify storage mcmmt:creeperandcat cat append value "-5151 103 -5067"
data modify storage mcmmt:creeperandcat cat append value "-5251 103 -4967"
data modify storage mcmmt:creeperandcat cat append value "-5251 103 -5067"

data modify storage mcmmt:creeperandcat creeper append value "-4987 103 -4967"
data modify storage mcmmt:creeperandcat creeper append value "-4987 103 -5067"
data modify storage mcmmt:creeperandcat creeper append value "-5087 103 -4967"
data modify storage mcmmt:creeperandcat creeper append value "-5087 103 -5067"
data modify storage mcmmt:creeperandcat creeper append value "-5187 103 -4967"
data modify storage mcmmt:creeperandcat creeper append value "-5187 103 -5067"
data modify storage mcmmt:creeperandcat creeper append value "-5287 103 -4967"
data modify storage mcmmt:creeperandcat creeper append value "-5287 103 -5067"

data modify storage mcmmt:creeperandcat button.1 append value "-4998 121 -4967"
data modify storage mcmmt:creeperandcat button.1 append value "-4940 121 -4967"
data modify storage mcmmt:creeperandcat button.2 append value "-5098 121 -4967"
data modify storage mcmmt:creeperandcat button.2 append value "-5040 121 -4967"
data modify storage mcmmt:creeperandcat button.3 append value "-5198 121 -4967"
data modify storage mcmmt:creeperandcat button.3 append value "-5140 121 -4967"
data modify storage mcmmt:creeperandcat button.4 append value "-5298 121 -4967"
data modify storage mcmmt:creeperandcat button.4 append value "-5240 121 -4967"

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