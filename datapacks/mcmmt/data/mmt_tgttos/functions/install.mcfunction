#info
execute if score logon core_setting matches 1 run function mmt_tgttos:info

#initialize
scoreboard objectives add tgttos dummy
summon marker 10000 100 10000 {CustomName:'{"text":"round_count"}',Tags:[config]} 
scoreboard players set @e[name="round_count"] tgttos 0