title @s times 0t 30t 5t
playsound entity.firework_rocket.twinkle ambient @s ~ ~ ~
$title @s subtitle {"type": "translatable", "translate": "已淘汰：%s", "color": "white", "with": [{"type": "selector", "selector": "@a[tag=dnb_player, scores={core_pid=$(index)}]"}]}
title @s title {"type": "text", "text": "⚔", "color": "gold"}
title @s reset
function mmt_dynaball:scores/add_ps with storage mcmmt:dynaball game_scores.eliminate