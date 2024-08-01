
# particle
# args

$data modify storage mcmmt:core_utils color_panel.particle set value "$(particle)"
$data modify storage mcmmt:core_utils color_panel.trailing set value "$(args)"
function mmt_core:utils/private_color_panel/run_particle with storage mcmmt:core_utils color_panel
