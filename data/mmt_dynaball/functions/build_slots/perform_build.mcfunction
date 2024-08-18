# index
# map_name
# clone_a
# clone_b
# length
# slot_a
# slot_b
# team_a_spawn
# team_b_spawn
$title @a[tag=dnb_player] actionbar {"type":"translatable", "translate": "正在复制地图：%s ...", "with": [{"text": "$(map_name)", "color": "white", "italic": true}]}
# add args to games
$data modify storage mcmmt:dynaball games[$(index)].team_a_spawn set value "$(team_a_spawn)"
$data modify storage mcmmt:dynaball games[$(index)].team_b_spawn set value "$(team_b_spawn)"
$data modify storage mcmmt:dynaball games[$(index)].spread_r set value $(length)
# clone
$clone $(clone_a) $(slot_a) replace
$clone $(clone_b) $(slot_b) replace