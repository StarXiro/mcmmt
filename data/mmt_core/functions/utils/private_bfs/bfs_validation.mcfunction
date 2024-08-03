
execute if score steps core_utils_search >= max_steps core_utils_search run return fail
execute if score depth core_utils_search > max_depth core_utils_search run return fail

execute store result score temp core_utils_search run data get entity @s Pos[0] 1.0
scoreboard players operation temp core_utils_search -= origin_x core_utils_search
execute if score temp core_utils_search > x_pos_range core_utils_search run return fail
execute if score temp core_utils_search < x_neg_range core_utils_search run return fail

execute store result score temp core_utils_search run data get entity @s Pos[1] 1.0
scoreboard players operation temp core_utils_search -= origin_y core_utils_search
execute if score temp core_utils_search > y_pos_range core_utils_search run return fail
execute if score temp core_utils_search < y_neg_range core_utils_search run return fail

execute store result score temp core_utils_search run data get entity @s Pos[2] 1.0
scoreboard players operation temp core_utils_search -= origin_z core_utils_search
execute if score temp core_utils_search > z_pos_range core_utils_search run return fail
execute if score temp core_utils_search < z_neg_range core_utils_search run return fail

return 1