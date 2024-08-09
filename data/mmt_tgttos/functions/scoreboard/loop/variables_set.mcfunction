#宏函数变量赋值
data remove storage mcmmt:tgttos scoreboard.team
$data modify storage mcmmt:tgttos scoreboard.team set from storage mcmmt:core teamlist[$(index)]
execute unless data storage mcmmt:tgttos scoreboard.team run scoreboard players set i tgttos_config 1
execute unless data storage mcmmt:tgttos scoreboard.team run data modify storage mcmmt:tgttos scoreboard.team set from storage mcmmt:core teamlist[0]