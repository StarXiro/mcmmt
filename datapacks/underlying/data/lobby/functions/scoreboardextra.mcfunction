$execute as @e[name="game_count",limit=1] run scoreboard players display name 游戏进度 lobbyscoreboard [{"text":"游戏进度 : ","color":"aqua"},{"text":"$(game)","color":"white"},{"text":"/8","color":"white"}]
#$execute as @a[tag=player] run scoreboard players display name 小鱼干 lobbyscoreboard [{"text":"你的小鱼干 : ","color":"white"},{"text":"$(score)","color":"gold"},{"text":" 喵","color":"white"}]
$execute if score @e[name="game_count",limit=1] config matches 1.. run scoreboard players display name 当前游戏 lobbyscoreboard [{"text":"当前游戏 : ","color":"aqua"},{"color":"white","text":$(game_name)}]
$execute as @r run scoreboard players display name 玩家数 lobbyscoreboard [{"text":"玩家数量 : ","color":"yellow"},{"text":"$(player_count)","color":"yellow"},{"text":"/32","color":"yellow"}]
$execute if score timemode timer matches -3..-2 run execute if score @e[name="second",limit=1] timer matches 1..9 run scoreboard players display name 剩余时间 lobbyscoreboard [{"text":"游戏开始 : ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":0","color":"white"},{"color":"white","text":"$(second)"}]
$execute if score timemode timer matches -4 run execute if score @e[name="second",limit=1] timer matches 1..9 run scoreboard players display name 剩余时间 lobbyscoreboard [{"text":"游戏结束 : ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":0","color":"white"},{"color":"white","text":"$(second)"}]
$execute if score timemode timer matches -3..-2 run execute if score @e[name="second",limit=1] timer matches 10.. run scoreboard players display name 剩余时间 lobbyscoreboard [{"text":"游戏开始 : ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":","color":"white"},{"color":"white","text":"$(second)"}]
$execute if score timemode timer matches -4 run execute if score @e[name="second",limit=1] timer matches 10.. run scoreboard players display name 剩余时间 lobbyscoreboard [{"text":"游戏结束 : ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":","color":"white"},{"color":"white","text":"$(second)"}]
$execute if score timemode timer matches -5 run execute if score @e[name="second",limit=1] timer matches 10.. run scoreboard players display name 剩余时间 lobbyscoreboard [{"text":"选择阶段 : ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":","color":"white"},{"color":"white","text":"$(second)"}]
$execute if score timemode timer matches -5 run execute if score @e[name="second",limit=1] timer matches 1..9 run scoreboard players display name 剩余时间 lobbyscoreboard [{"text":"选择阶段 : ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":0","color":"white"},{"color":"white","text":"$(second)"}]
