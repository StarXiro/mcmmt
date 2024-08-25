$data modify storage mcmmt:skb teamtp.spawn set from storage mcmmt:skb spawns[$(index)]
$data modify storage mcmmt:skb teamtp.team set value "$(object)"
function mmt_skybattle:game_process/do_tp with storage mcmmt:skb teamtp
