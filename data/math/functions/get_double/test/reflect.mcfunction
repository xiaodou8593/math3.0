#math:get_double/test/reflect

function math:float/todata/_double
function math:_get_double
#tellraw @a [" double: ", {"nbt":"double","storage":"math:io"}]
tellraw @a [" sign:", {"score":{"name":"sign","objective":"int"}}," digits:", {"score":{"name":"digits","objective":"int"}}," exp:", {"score":{"name":"exp","objective":"int"}}]