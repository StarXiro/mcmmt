$spreadplayers $(team_a_spawn) 2.0 $(spread_r) false @a[tag=$(team_a)]
$spreadplayers $(team_b_spawn) 2.0 $(spread_r) false @a[tag=$(team_b)]
$execute as @a[tag=$(team_a)] at @s run fill ~1 ~2 ~1 ~-1 ~-1 ~-1 barrier replace #mmt_core:all_air
$execute as @a[tag=$(team_a)] at @s run fill ~ ~1 ~ ~ ~ ~ air replace minecraft:barrier
$execute as @a[tag=$(team_b)] at @s run fill ~1 ~2 ~1 ~-1 ~-1 ~-1 barrier replace #mmt_core:all_air
$execute as @a[tag=$(team_b)] at @s run fill ~ ~1 ~ ~ ~ ~ air replace minecraft:barrier