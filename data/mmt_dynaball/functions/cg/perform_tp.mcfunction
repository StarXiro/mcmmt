# object
$data modify storage mcmmt:dynaball temp set value $(object)
function mmt_dynaball:cg/add_slot_tag with storage mcmmt:dynaball temp
data modify storage mcmmt:dynaball macro_bag.frame set from storage mcmmt:dynaball temp.cg.transport
data modify storage mcmmt:dynaball macro_bag.frame.tag set from storage mcmmt:dynaball temp.cg.tag
data modify storage mcmmt:dynaball macro_bag.frame.camera set from storage mcmmt:dynaball temp.cg.camera
function mmt_dynaball:cg/frames/transport with storage mcmmt:dynaball macro_bag.frame