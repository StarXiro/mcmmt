schedule function mmt_creeperandcat:on_second 20t replace
scoreboard players add second CACconfig 1
scoreboard players remove second1 CACconfig 1
execute if score second CACconfig matches 30 run schedule clear mmt_creeperandcat:on_second
execute if score second CACconfig matches 30 run function mmt_creeperandcat:game_process/prepare with storage mcmmt:core_utils/make_match.list
