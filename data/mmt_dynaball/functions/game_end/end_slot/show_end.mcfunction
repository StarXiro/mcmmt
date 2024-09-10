$title @a[tag=dnb_player, team=$(tag)] reset
$title @a[tag=dnb_player, team=$(tag)] times 0t 40t 5t
$title @a[tag=dnb_player, team=$(tag)] subtitle {"type": "translatable", "translate": "获胜队伍：%s", "with": [{"type": "text", "text": "$(team)", "color": "$(tc)"}]}
$title @a[tag=dnb_player, team=$(tag)] title {"type": "text", "text": "游戏结束", "color": "$(color)"}