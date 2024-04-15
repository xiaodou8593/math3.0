#math:test
$data modify storage math:io string set value "$(double)"
tellraw @a ["string: ", {"nbt":"string","storage":"math:io"}]