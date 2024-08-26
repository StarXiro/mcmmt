$data modify storage mcmmt:tgttos team.list[$(index)].color set from entity @s data.color
data modify storage mcmmt:tgttos team_display.name2 set from entity @s data.name
#line1
data modify storage mcmmt:tgttos team_display.i set value 1
data modify storage mcmmt:tgttos team.index set value 0
function mmt_tgttos:scoreboard/score_update/update with storage mcmmt:tgttos team
#第1-2名特化
execute if score @s tgttos_team_list matches ..2 run function mmt_tgttos:scoreboard/score_update/below2

#第8名特化
execute if score @s tgttos_team_list matches 7 run function mmt_tgttos:scoreboard/score_update/equal8

#其他排名
execute if score @s tgttos_team_list matches 3..6 run function mmt_tgttos:scoreboard/score_update/beyond2