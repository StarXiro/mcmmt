
# death validation
execute store success score valid_check core_datatemp run scoreboard players get @s stas_last_death
execute if score valid_check core_datatemp matches 0 run scoreboard players set @s stas_last_death 0
# walk validation
execute store success score valid_check core_datatemp run scoreboard players get @s stas_last_walk
execute if score valid_check core_datatemp matches 0 run scoreboard players set @s stas_last_walk 0
# elytra validation
execute store success score valid_check core_datatemp run scoreboard players get @s stas_last_elytra
execute if score valid_check core_datatemp matches 0 run scoreboard players set @s stas_last_elytra 0


# utils.check_point validation
execute store success score valid_check core_datatemp run scoreboard players get @s core_utils_check_point_id
execute if score valid_check core_datatemp matches 0 run scoreboard players set @s core_utils_check_point_id -1
