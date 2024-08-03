
execute as @e[type=minecraft:chicken, tag=bomb_chick_a] at @s run summon minecraft:tnt ~ ~ ~ {Tags:["weapon_a", "chick_bomb_a", "chick_bomb", "in_air"], fuse: 500}
execute as @e[type=minecraft:chicken, tag=bomb_chick_b] at @s run summon minecraft:tnt ~ ~ ~ {Tags:["weapon_b", "chick_bomb_b", "chick_bomb", "in_air"], fuse: 500}
