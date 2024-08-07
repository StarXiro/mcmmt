
# key
# value

$data modify storage mcmmt:core_utils make_match.display_args.kc set from storage mcmmt:core team_data.$(key).color
$data modify storage mcmmt:core_utils make_match.display_args.vc set from storage mcmmt:core team_data.$(value).color

function mmt_core:utils/make_match/private/tell_action with storage mcmmt:core_utils make_match.display_args
