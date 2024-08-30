$team add $(id) {"type": "text", "text": "$(name)", "color": "$(color)"}
$team modify $(id) color $(color)
$team modify $(id) prefix {"type": "text", "text": "愺 ", "color": "$(color)"}
$team modify $(id) collisionRule pushOwnTeam
$team modify $(id) friendlyFire false