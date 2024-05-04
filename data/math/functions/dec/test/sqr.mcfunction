#math:dec/test/sqr

scoreboard players set dec int -859345
function math:dec/_sqr
tellraw @a ["dec: ", {"score":{"name":"dec","objective":"int"}}]