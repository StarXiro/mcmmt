$execute store result score reward2 tgttos_config run data get storage mcmmt:tgttos scorelist.reward2[$(rank)]
$scoreboard players operation $(teamname) tgttos_team_score += reward2 tgttos_config
$scoreboard players operation reward2 tgttos_config /= $(teamname) tgttos_player_count
$scoreboard players operation @a[team=$(teamname)] core_player_score += reward2 tgttos_config
$scoreboard players operation @a[team=$(teamname)] tgttos_player_score += reward2 tgttos_config

#需要修改
$tellraw @a {"translate":"%s第%s个完成了全部比赛","with":[{"text":"$(teamname)"},{"score":{"name":"team_rank","objective":"tgttos_config"},"color":"gold"}]}

#防止重复加和
$scoreboard players set $(teamname) tgttos_config 1