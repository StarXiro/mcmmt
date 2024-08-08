#需要传入参数 scoreboardname / name
$kill @e[name=$(name),type=marker]
$summon marker 0 0 0 {CustomName:"$(name)"}
$scoreboard players operation @e[name=$(name),type=marker] $(scoreboardname) += $(name) $(scoreboardname)
