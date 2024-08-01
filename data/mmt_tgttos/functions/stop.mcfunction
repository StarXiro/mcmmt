#游戏结束
scoreboard players set @e[name="tgttos"] core_game_config 0
tag @a[tag=tgttos] remove tgttos
stopsound @a

#schedule clear
schedule clear mmt_tgttos:on_tick
schedule clear mmt_tgttos:on_5tick