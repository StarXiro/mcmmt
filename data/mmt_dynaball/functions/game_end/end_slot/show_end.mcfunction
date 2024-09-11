$title @a[tag=dnb_broadcast, tag=$(tag)] times 0t 60t 5t
$title @a[tag=dnb_broadcast, tag=$(tag)] subtitle {"type": "translatable", "translate": "获胜队伍：%s", "with": [{"type": "text", "text": "$(team)", "color": "$(tc)"}]}
$title @a[tag=dnb_broadcast, tag=$(tag)] title {"type": "text", "text": "游戏结束", "color": "$(color)"}