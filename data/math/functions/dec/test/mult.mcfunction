#math:dec/test/mult

scoreboard players set dec int 85934
scoreboard players set idec int 35284
function math:dec/_mult
tellraw @a ["dec: ", {"score":{"name":"dec","objective":"int"}}]

scoreboard players set dec int 85934
scoreboard players set idec int -35284
function math:dec/_mult
tellraw @a ["dec: ", {"score":{"name":"dec","objective":"int"}}]

scoreboard players set dec int -85934
scoreboard players set idec int 35284
function math:dec/_mult
tellraw @a ["dec: ", {"score":{"name":"dec","objective":"int"}}]

scoreboard players set dec int -85934
scoreboard players set idec int -35284
function math:dec/_mult
tellraw @a ["dec: ", {"score":{"name":"dec","objective":"int"}}]