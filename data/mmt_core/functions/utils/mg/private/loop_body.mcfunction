#需要传入参数 scoreboardname / name / displayname(非必要) / color(非必要)
$kill @e[name="$(displayname)",type=marker]
$summon marker 0 0 0 {CustomName:'{"type":"text","text":"$(displayname)","color":"$(color)"}'}
$scoreboard players operation @e[name="$(displayname)",type=marker] $(scoreboardname) += $(name) $(scoreboardname)
$scoreboard players display name @e[name="$(displayname)",type=marker] $(scoreboardname) {"text":"$(displayname)","color":"$(color)"}
$data modify entity @e[name="$(displayname)",type=marker,limit=1] data.color set value "$(color)"
$data modify entity @e[name="$(displayname)",type=marker,limit=1] data.name set value "$(name)"