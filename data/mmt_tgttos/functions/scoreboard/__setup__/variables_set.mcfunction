data remove storage mcmmt:tgttos scoreboard.team
data remove storage mcmmt:tgttos scoreboard.color
$data modify storage mcmmt:tgttos scoreboard.team set from storage mcmmt:core teamlist[$(index)]
$data modify storage mcmmt:tgttos scoreboard.color set from storage mcmmt:core teamcolor[$(index)]
