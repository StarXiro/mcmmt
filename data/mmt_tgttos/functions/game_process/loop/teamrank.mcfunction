data modify storage mcmmt:core_utils mg.scoreboardname set value "tgttos_team_score"
data modify storage mcmmt:core_utils mg.namelist set from storage mcmmt:core teamlist
function mmt_core:utils/mg/main
data modify storage mcmmt:core_utils SBSconfig.scoreboardname set value "tgttos_team_score"
data modify storage mcmmt:core_utils SBSconfig.loop_max set value 8
function mmt_core:utils/sbs/main with storage mcmmt:core_utils SBSconfig