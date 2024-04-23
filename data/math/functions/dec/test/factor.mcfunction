#math:dec/test/factor

scoreboard players set dec int 85934531
scoreboard players set idec int 35284112
scoreboard players set jdec int 29635829
function math:dec/_factor
tellraw @a ["dec: ", {"score":{"name":"dec","objective":"int"}}]