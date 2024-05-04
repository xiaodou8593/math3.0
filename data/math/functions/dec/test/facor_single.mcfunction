#math:dec/test/factor_single

scoreboard players set dec int 85934531
scoreboard players set idec int 3528
scoreboard players set jdec int 2963
function math:dec/_factor_single
tellraw @a ["dec: ", {"score":{"name":"dec","objective":"int"}}]