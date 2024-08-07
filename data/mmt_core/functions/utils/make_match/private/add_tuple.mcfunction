
# key
# value

$execute if data storage mcmmt:core_utils make_match.set.$(key) run return fail

$data modify storage mcmmt:core_utils make_match.set.$(key) set value 1
$data modify storage mcmmt:core_utils make_match.set.$(value) set value 1

$data modify storage mcmmt:core_utils make_match.tuples append value {team: "$(key)", opponent: "$(value)"}
