
execute if score @s dnb_air_strike matches ..-1 run return run function mmt_dynaball:weapons/air_strike/end_countdown
scoreboard players remove @s dnb_air_strike 1
playsound entity.creeper.primed ambient @a ~ ~ ~
