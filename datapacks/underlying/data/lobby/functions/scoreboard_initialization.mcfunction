#scoreboard objectives remove lobbyscoreboard
scoreboard objectives add lobbyscoreboard dummy {"text":"MCMM Tournament","color":"gold"}
scoreboard players reset * lobbyscoreboard
#scoreboard players reset 当前版本 lobbyscoreboard
scoreboard objectives modify lobbyscoreboard numberformat blank
scoreboard objectives modify lobbyscoreboard displayautoupdate true
scoreboard players set 当前版本 lobbyscoreboard 0
#scoreboard players set 小鱼干 lobbyscoreboard 1
scoreboard players set 占位 lobbyscoreboard 2
scoreboard players set 玩家数 lobbyscoreboard 3
scoreboard players set 占位2 lobbyscoreboard 4 
scoreboard players set 剩余时间 lobbyscoreboard 5
scoreboard players set 当前游戏 lobbyscoreboard 6
scoreboard players set 游戏进度 lobbyscoreboard 7
scoreboard objectives setdisplay sidebar lobbyscoreboard
scoreboard players display name 占位 lobbyscoreboard [{"text":"  "}]
scoreboard players display name 占位2 lobbyscoreboard [{"text":"  "}]