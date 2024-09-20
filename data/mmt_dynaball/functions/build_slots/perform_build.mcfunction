$title @a[tag=dnb_player] actionbar {"type":"translatable", "translate": "正在复制地图：%s ...", "with": [{"text": "$(map_name)", "color": "white", "italic": true}]}
# add args to games
$data modify storage mcmmt:dynaball games[$(index)].team_a_spawn set value "$(team_a_spawn)"
$data modify storage mcmmt:dynaball games[$(index)].team_b_spawn set value "$(team_b_spawn)"
$data modify storage mcmmt:dynaball games[$(index)].spec_tp set value "$(spec_tp)"
$data modify storage mcmmt:dynaball games[$(index)].spread_r set value $(length)
$data modify storage mcmmt:dynaball games[$(index)].checker set value $(checker)
$data modify storage mcmmt:dynaball games[$(index)].boundaries set value $(boundaries)
$data modify storage mcmmt:dynaball games[$(index)].cg set value $(cg)
$data modify storage mcmmt:dynaball games[$(index)].cg.tag set value "dnb_slot_$(index)"
$data modify storage mcmmt:dynaball games[$(index)].cg.camera set value "cam_$(index)"
# clone
$clone $(clone_a) $(slot_a) replace
$clone $(clone_b) $(slot_b) replace