scoreboard players reset * player_count
scoreboard players set @a[tag=player] player_count 1
scoreboard players operation @e[name="all",limit=1] player_count += @a[tag=player] player_count
scoreboard players operation red player_count += @a[tag=player,team=red] player_count
scoreboard players operation orange player_count += @a[tag=player,team=orange] player_count
scoreboard players operation yellow player_count += @a[tag=player,team=yellow] player_count
scoreboard players operation lime player_count += @a[tag=player,team=lime] player_count
scoreboard players operation green player_count += @a[tag=player,team=green] player_count
scoreboard players operation aqua player_count += @a[tag=player,team=aqua] player_count
scoreboard players operation blue player_count += @a[tag=player,team=blue] player_count
scoreboard players operation pink player_count += @a[tag=player,team=pink] player_count
scoreboard players display name 当前版本 lobbyscoreboard [{"text":"当前版本 : ","italic":false},{"text":"pre-0.0.1","color":"gray"}]
data remove storage lobby:scoreboard game_count
data modify storage lobby:scoreboard game_name set value '" "'
#execute store result storage lobby:scoreboard game_count int 1 run execute store result score @e[name="game_count"] config run execute store result storage lobby:scoreboard game_count int 1 run function lobby:scoreboardextra with storage lobby:scoreboard game_count
execute as @e[name="game_count"] store result storage lobby:scoreboard game int 1 run scoreboard players get @s config
data modify storage lobby:scoreboard game_name set from entity @e[scores={config=10},tag=config,limit=1] CustomName
#execute as @e[name="game_count"] run function lobby:scoreboardextra with storage lobby:scoreboard
#execute as @a[tag=player] store result storage lobby:scoreboard score int 1 run scoreboard players get @s score
#execute as @a[tag=player] run function lobby:scoreboardextra with storage lobby:scoreboard
execute if score @e[name="game_count",limit=1] config matches 0 run scoreboard players display name 当前游戏 lobbyscoreboard {"text":"游戏未开始","color":"red"}
execute as @e[name="minute"] store result storage lobby:scoreboard minute int 1 run scoreboard players get @s timer
execute as @e[name="second"] store result storage lobby:scoreboard second int 1 run scoreboard players get @s timer
execute if score countdown timer matches -1 run scoreboard players display name 剩余时间 lobbyscoreboard {"text":"请等待","color":"gray"}
execute as @r store result storage lobby:scoreboard player_count int 1 run scoreboard players get @e[name="all",limit=1] player_count
execute as @r run function lobby:scoreboardextra with storage lobby:scoreboard
