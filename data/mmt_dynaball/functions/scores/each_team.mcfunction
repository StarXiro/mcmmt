$scoreboard players set $(object) dnb_total_score 0
$scoreboard players operation $(object) dnb_total_score += @a[tag=dnb_player, team=$(object)] dnb_player_score
$scoreboard players operation $(object) dnb_total_score += $(object) dnb_team_score