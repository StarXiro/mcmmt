#game_count
$execute as @r run scoreboard players display name 游戏进度 CACdisplay [{"text":"游戏进度: ","color":"aqua"},{"text":"$(game_count)","color":"white"},{"text":"/8","color":"white"}]

#map_name
$execute as @r run scoreboard players display name 地图 CACdisplay [{"text":"地图: ","color":"aqua"},{"color":"white","text":"$(map)"}]

#player_finished with sum
$execute as @r run scoreboard players display name 玩家数 CACdisplay [{"text":"玩家人数: ","color":"green"},{"text":"$(playercount)","color":"green"},{"text":"/","color":"green"},{"text":"$(playercount)","color":"green"}]

#round_count
$execute as @r run scoreboard players display name 当前回合 CACdisplay [{"text":"当前回合: ","color":"aqua"},{"text":"$(round)","color":"white"},{"text":"/7","color":"white"}]

#time module - for second and for minutes - for >10s and <10s
$execute if score timemode CACconfig matches 1 run execute if score second1 CACconfig matches 0..9 run scoreboard players display name 剩余时间 CACdisplay [{"text":"地图试跑：","color":"red"},{"color":"white","text":"0"},{"text":":0","color":"white"},{"color":"white","text":"$(second1)"}]
$execute if score timemode CACconfig matches 1 run execute if score second1 CACconfig matches 10.. run scoreboard players display name 剩余时间 CACdisplay [{"text":"地图试跑: ","color":"red"},{"color":"white","text":"0"},{"text":":","color":"white"},{"color":"white","text":"$(second1)"}]

$execute if score timemode CACconfig matches 2 run execute if score second1 CACconfig matches 0..9 run scoreboard players display name 剩余时间 CACdisplay [{"text":"选择抓捕者: ","color":"red"},{"color":"white","text":"0"},{"text":":0","color":"white"},{"color":"white","text":"$(second1)"}]
$execute if score timemode CACconfig matches 2 run execute if score second1 CACconfig matches 10.. run scoreboard players display name 剩余时间 CACdisplay [{"text":"选择抓捕者: ","color":"red"},{"color":"white","text":"0"},{"text":":","color":"white"},{"color":"white","text":"$(second1)"}]

$execute if score timemode CACconfig matches 3 run execute if score second1 CACconfig matches 0..9 run scoreboard players display name 剩余时间 CACdisplay [{"text":"准备阶段: ","color":"red"},{"color":"white","text":"0"},{"text":":0","color":"white"},{"color":"white","text":"$(second1)"}]
$execute if score timemode CACconfig matches 3 run execute if score second1 CACconfig matches 10.. run scoreboard players display name 剩余时间 CACdisplay [{"text":"准备阶段: ","color":"red"},{"color":"white","text":"0"},{"text":":","color":"white"},{"color":"white","text":"$(second1)"}]

$execute if score timemode CACconfig matches 4 run execute if score second1 CACconfig matches 0..9 run scoreboard players display name 剩余时间 CACdisplay [{"text":"Run!: ","color":"red"},{"color":"white","text":"0"},{"text":":0","color":"white"},{"color":"white","text":"$(second1)"}]
$execute if score timemode CACconfig matches 4 run execute if score second1 CACconfig matches 10.. run scoreboard players display name 剩余时间 CACdisplay [{"text":"Run!: ","color":"red"},{"color":"white","text":"0"},{"text":":","color":"white"},{"color":"white","text":"$(second1)"}]

$execute if score timemode CACconfig matches 5 run execute if score second1 CACconfig matches 0..9 run scoreboard players display name 剩余时间 CACdisplay [{"text":"回合结束: ","color":"red"},{"color":"white","text":"0"},{"text":":0","color":"white"},{"color":"white","text":"$(second1)"}]
$execute if score timemode CACconfig matches 5 run execute if score second1 CACconfig matches 10.. run scoreboard players display name 剩余时间 CACdisplay [{"text":"回合结束: ","color":"red"},{"color":"white","text":"0"},{"text":":","color":"white"},{"color":"white","text":"$(second1)"}]