
# index
# object

$data modify storage mcmmt:core_utils make_match.key_make.value set from storage mcmmt:core_utils make_match.team_list[$(object)]
$data modify storage mcmmt:core_utils make_match.key_make.key set from storage mcmmt:core_utils make_match.team_list[$(index)]

data modify storage mcmmt:core_utils make_match.list append from storage mcmmt:core_utils make_match.key_make.value
function mmt_core:utils/make_match/private/make_pair with storage mcmmt:core_utils make_match.key_make
