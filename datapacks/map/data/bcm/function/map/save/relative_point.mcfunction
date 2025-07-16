$data modify storage bcm macro.abs set from storage bcm abs.$(to)
$data modify storage bcm macro.to set value "$(to)"
$say $(to)
function bcm:map/save/relative_point_macro with storage bcm macro