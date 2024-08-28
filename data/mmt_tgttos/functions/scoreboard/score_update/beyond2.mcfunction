#line2
data modify storage mcmmt:tgttos team_display.i set value 2
scoreboard players operation k tgttos = @s tgttos_team_list 
scoreboard players remove k tgttos 1
execute store result storage mcmmt:tgttos team.index int 1 run scoreboard players get k tgttos
function mmt_tgttos:scoreboard/score_update/update with storage mcmmt:tgttos team

#line3
data modify storage mcmmt:tgttos team_display.i set value 3
scoreboard players add k tgttos 1
execute store result storage mcmmt:tgttos team.index int 1 run scoreboard players get k tgttos
function mmt_tgttos:scoreboard/score_update/update with storage mcmmt:tgttos team

#line4
data modify storage mcmmt:tgttos team_display.i set value 4
scoreboard players add k tgttos 1
execute store result storage mcmmt:tgttos team.index int 1 run scoreboard players get k tgttos
function mmt_tgttos:scoreboard/score_update/update with storage mcmmt:tgttos team