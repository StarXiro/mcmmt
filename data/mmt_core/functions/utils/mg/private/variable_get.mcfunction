#name update
data remove storage mcmmt:core_utils mg.name
data remove storage mcmmt:core_utils mg.color
data remove storage mcmmt:core_utils mg.displayname
$data modify storage mcmmt:core_utils mg.name set from storage mcmmt:core_utils mg.namelist[$(index)]
$data modify storage mcmmt:core_utils mg.color set from storage mcmmt:core_utils mg.colorlist[$(index)]
$data modify storage mcmmt:core_utils mg.displayname set from storage mcmmt:core_utils mg.displaynamelist[$(index)]
execute unless data storage mcmmt:core_utils mg.displayname run data modify storage mcmmt:core_utils mg.displayname set from storage mcmmt:core_utils mg.name
execute unless data storage mcmmt:core_utils mg.color run data modify storage mcmmt:core_utils mg.color set value "white"