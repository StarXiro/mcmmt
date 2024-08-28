schedule function mmt_creeperandcat:on_second 20t replace
scoreboard players remove second CACconfig 1

execute if score second CACconfig matches 0 run schedule clear mmt_creeperandcat:on_second
execute if score second CACconfig matches 0 run function mmt_creeperandcat:game/prepare