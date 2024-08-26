#set rank name score
execute store result storage mcmmt:tgttos team.rank int 1 run scoreboard players get @s core_utils_sbs_prank
execute store result storage mcmmt:tgttos team.score int 1 run scoreboard players get @s tgttos_sum_score
data modify storage mcmmt:tgttos team.name set from entity @s CustomName
data modify storage mcmmt:tgttos team.name set string storage mcmmt:tgttos team.name 9 11
scoreboard players operation @s tgttos_team_list = j tgttos
scoreboard players add j tgttos 1
function mmt_tgttos:score_list/private/list_generate with storage mcmmt:tgttos team