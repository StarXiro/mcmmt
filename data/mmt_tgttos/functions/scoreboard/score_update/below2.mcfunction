#line2
data modify storage mcmmt:tgttos team_display.i set value 2
data modify storage mcmmt:tgttos team.index set value 1
function mmt_tgttos:scoreboard/score_update/update with storage mcmmt:tgttos team
#line3
data modify storage mcmmt:tgttos team_display.i set value 3
data modify storage mcmmt:tgttos team.index set value 2
function mmt_tgttos:scoreboard/score_update/update with storage mcmmt:tgttos team

#line4
data modify storage mcmmt:tgttos team_display.i set value 4
data modify storage mcmmt:tgttos team.index set value 3
function mmt_tgttos:scoreboard/score_update/update with storage mcmmt:tgttos team