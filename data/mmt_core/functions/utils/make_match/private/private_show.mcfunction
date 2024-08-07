
# index
# object

$data modify storage mcmmt:core_utils make_match.display_args.key set from storage mcmmt:core_utils make_match.tuples[$(index)].team
$data modify storage mcmmt:core_utils make_match.display_args.value set from storage mcmmt:core_utils make_match.tuples[$(index)].opponent

function mmt_core:utils/make_match/private/show_raw with storage mcmmt:core_utils make_match.display_args
