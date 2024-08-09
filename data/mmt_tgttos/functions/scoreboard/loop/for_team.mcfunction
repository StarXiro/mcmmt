#game_count
$scoreboard players display name 游戏进度 tgttos_scoreboard_$(team) [{"text":"游戏进度: ","color":"aqua"},{"text":"$(game_count)","color":"white"},{"text":"/8","color":"white"}]

#map_name
$scoreboard players display name 当前地图 tgttos_scoreboard_$(team) [{"text":"当前地图: ","color":"aqua"},{"color":"white","text":$(map_name)}]

#player_finished with sum
$scoreboard players display name 玩家数 tgttos_scoreboard_$(team) [{"text":"已完成玩家: ","color":"green"},{"text":"$(finish_count)","color":"green"},{"text":"/","color":"green"},{"text":"$(player_count)","color":"green"}]

#round_count
$scoreboard players display name 当前回合 tgttos_scoreboard_$(team) [{"text":"当前回合: ","color":"aqua"},{"text":"$(round_count)","color":"white"},{"text":"/6","color":"white"}]

#time module - for second and for minutes - for >10s and <10s
$execute if score gameprocess tgttos matches 1 run execute if score second tgttos matches 0..9 run scoreboard players display name 剩余时间 tgttos_scoreboard_$(team) [{"text":"回合开始: ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":0","color":"white"},{"color":"white","text":"$(second)"}]
$execute if score gameprocess tgttos matches 1 run execute if score second tgttos matches 10.. run scoreboard players display name 剩余时间 tgttos_scoreboard_$(team) [{"text":"回合开始: ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":","color":"white"},{"color":"white","text":"$(second)"}]
$execute if score gameprocess tgttos matches 2 run execute if score second tgttos matches 0..9 run scoreboard players display name 剩余时间 tgttos_scoreboard_$(team) [{"text":"回合结束: ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":0","color":"white"},{"color":"white","text":"$(second)"}]
$execute if score gameprocess tgttos matches 2 run execute if score second tgttos matches 10.. run scoreboard players display name 剩余时间 tgttos_scoreboard_$(team) [{"text":"回合结束: ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":","color":"white"},{"color":"white","text":"$(second)"}]
$execute if score gameprocess tgttos matches 3 run execute if score second tgttos matches 0..9 run scoreboard players display name 剩余时间 tgttos_scoreboard_$(team) [{"text":"下一轮: ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":0","color":"white"},{"color":"white","text":"$(second)"}]
$execute if score gameprocess tgttos matches 3 run execute if score second tgttos matches 10.. run scoreboard players display name 剩余时间 tgttos_scoreboard_$(team) [{"text":"下一轮: ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":","color":"white"},{"color":"white","text":"$(second)"}]
