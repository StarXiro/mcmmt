
# death validation
execute store success score valid_check core_datatemp run scoreboard players get @s stas_last_death
execute if score valid_check core_datatemp matches 0 run scoreboard players set @s stas_last_death 0
execute store success score valid_check core_datatemp run scoreboard players get @s stas_last_walk
execute if score valid_check core_datatemp matches 0 run scoreboard players set @s stas_last_walk 0
execute store success score valid_check core_datatemp run scoreboard players get @s stas_last_elytra
execute if score valid_check core_datatemp matches 0 run scoreboard players set @s stas_last_elytra 0
