#获得了参数 name rank score color
$data modify storage mcmmt:tgttos team_display.name set from storage mcmmt:tgttos team.list[$(index)].name
$data modify storage mcmmt:tgttos team_display.score set from storage mcmmt:tgttos team.list[$(index)].score
$data modify storage mcmmt:tgttos team_display.rank set from storage mcmmt:tgttos team.list[$(index)].rank
$data modify storage mcmmt:tgttos team_display.color set from storage mcmmt:tgttos team.list[$(index)].color

function mmt_tgttos:scoreboard/score_update/display with storage mcmmt:tgttos team_display