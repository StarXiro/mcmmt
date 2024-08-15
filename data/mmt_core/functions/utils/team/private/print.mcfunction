
# key
# team_id
# display
# score
# color

$tellraw @a {"type": "translatable", "translate": "%s :", "with": [{"type": "text", "text": "$(key)", "color": "white", "italic": true}]}
$tellraw @a {"type": "translatable", "translate": "队伍名称：%s", "with": [{"text": "$(display)", "color": "$(color)"}]}
$tellraw @a {"type": "translatable", "translate": "队伍分数：%s", "with": [{"text": "$(score)", "color": "green"}]}
$tellraw @a {"type": "translatable", "translate": "成员：%s", "with": [{"selector": "@a[scores={core_utils_team_id=$(team_id)}]", "color": "$(color)"}]}
