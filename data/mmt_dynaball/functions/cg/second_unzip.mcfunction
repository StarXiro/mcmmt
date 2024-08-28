$data modify storage mcmmt:dynaball temp set value $(object)
data modify storage mcmmt:dynaball macro_bag.frame.camera set from storage mcmmt:dynaball temp.cg.camera
function mmt_dynaball:cg/call_frame with storage mcmmt:dynaball macro_bag.frame