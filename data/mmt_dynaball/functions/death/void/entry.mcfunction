$data modify storage mcmmt:dynaball macro_bag.message.slot_tag set value "$(slot_tag)"
$execute as @a[tag=$(slot_tag), tag=dnb_player] at @s if function mmt_dynaball:death/void/void_check run function mmt_dynaball:death/void/void_death with storage mcmmt:dynaball save_load