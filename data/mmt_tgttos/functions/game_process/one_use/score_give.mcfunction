scoreboard players set reward tgttos_config 0
$execute store result score reward tgttos_config run data get storage mcmmt:tgttos scorelist.reward[$(rank)]
scoreboard players operation @s core_player_score += reward tgttos_config
