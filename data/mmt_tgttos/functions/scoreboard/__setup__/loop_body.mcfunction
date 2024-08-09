#scoreboard config
$scoreboard objectives add tgttos_scoreboard_$(team) dummy {"text":"TGTTOSAFTC","color":"gold","bold":true}
$scoreboard players reset * tgttos_scoreboard_$(team)
$scoreboard objectives modify tgttos_scoreboard_$(team) numberformat blank
$scoreboard objectives modify tgttos_scoreboard_$(team) displayautoupdate true

#scoreboard display initialization
$scoreboard players set 玩家数 tgttos_scoreboard_$(team) -5
$scoreboard players set 占位2 tgttos_scoreboard_$(team) -4
$scoreboard players set 队伍4 tgttos_scoreboard_$(team) -3
$scoreboard players set 队伍3 tgttos_scoreboard_$(team) -2
$scoreboard players set 队伍2 tgttos_scoreboard_$(team) -1
$scoreboard players set 队伍1 tgttos_scoreboard_$(team) 0
$scoreboard players set 游戏积分 tgttos_scoreboard_$(team) 1
$scoreboard players set 占位 tgttos_scoreboard_$(team) 3
$scoreboard players set 剩余时间 tgttos_scoreboard_$(team) 4 
$scoreboard players set 当前回合 tgttos_scoreboard_$(team) 5
$scoreboard players set 当前地图 tgttos_scoreboard_$(team) 6
$scoreboard players set 游戏进度 tgttos_scoreboard_$(team) 7
$scoreboard players display name 占位 tgttos_scoreboard_$(team) [{"text":"  "}]
$scoreboard players display name 占位2 tgttos_scoreboard_$(team) [{"text":"  "}]
$scoreboard players display name 游戏积分 tgttos_scoreboard_$(team) {"text":"本游戏积分:","color":"aqua"}
$scoreboard objectives setdisplay sidebar.team.$(color) tgttos_scoreboard_$(team)