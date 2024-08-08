
# p1
# p2

$data modify storage mcmmt:core_utils shuffle.swap set from storage mcmmt:core_utils shuffle.list[$(p1)]
$data modify storage mcmmt:core_utils shuffle.list[$(p1)] set from storage mcmmt:core_utils shuffle.list[$(p2)]
$data modify storage mcmmt:core_utils shuffle.list[$(p2)] set from storage mcmmt:core_utils shuffle.swap
