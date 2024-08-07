$execute store result score reward2 tgttos_config run data get storage mcmmt:tgttos scorelist.reward2[$(rank)]
$scoreboard players operation $(teamname) tgttos_team_score += reward2 tgttos_config
$scoreboard players operation reward2 tgttos_config /= $(teamname) tgttos_player_count
$scoreboard players operation @a[team=$(teamname)] core_player_score += reward2 tgttos_config
$scoreboard players operation @a[team=$(teamname)] tgttos_player_score += reward2 tgttos_config

#broadcast
tag @a add tgttos_broadcast
$tag @a[team=$(teamname)] remove tgttos_broadcast
$tellraw @a[tag=tgttos_broadcast] {"translate":"%s%s%s%s","with":[{"text":"$(teamname2)","color":"$(teamcolor)","bold":true},{"text":"是第","color":"aqua","bold":true},{"score":{"name":"team_rank","objective":"tgttos_config"},"color":"gold","bold":true},{"text":"个全部完成的队伍！","color":"aqua","bold":true}]}
$tellraw @a[team=$(teamname)] {"translate":"[%s%s%s] %s%s%s%s","with":[{"text":"+","color":"gold"},{"score":{"name":"reward2","objective":"tgttos_config"},"color":"gold"},{"text":"分","color":"gold"},{"text":"$(teamname2)","color":"$(teamcolor)","bold":true},{"text":"是第","color":"aqua","bold":true},{"score":{"name":"team_rank","objective":"tgttos_config"},"color":"gold","bold":true},{"text":"个全部完成的队伍！","color":"aqua","bold":true}]}
tag @a remove tgttos_broadcast
#防止重复加和
$scoreboard players set $(teamname) tgttos_config 1