#name update
data remove storage mcmmt:core_utils mg.name
$data modify storage mcmmt:core_utils mg.name set from storage mcmmt:core_utils mg.namelist[$(index)]
