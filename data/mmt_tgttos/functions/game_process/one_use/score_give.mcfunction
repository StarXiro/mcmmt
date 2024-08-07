scoreboard players set reward tgttos_config 0
$execute store result score reward tgttos_config run data get storage mcmmt:tgttos scorelist.reward[$(rank)]
scoreboard players operation @s core_player_score += reward tgttos_config
scoreboard players operation @s tgttos_player_score += reward tgttos_config
execute if score reward tgttos_config matches 1.. run tellraw @a {"translate":"[%s%s%s] %s%s%s","with":[{"text":"+","color":"gold"},{"score":{"name":"reward","objective":"tgttos_config"},"color":"gold"},{"text":"分","color":"gold"},{"text":"你是第","color":"gray"},{"score":{"name":"all","objective":"tgttos_finish_count"},"color":"aqua"},{"text":"个完成的玩家！","color":"gray"}]}