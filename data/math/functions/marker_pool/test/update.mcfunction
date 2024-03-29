#math:marker_pool/test/update

tellraw @a "--- marker_pool update test ---"

function math:marker_pool/_clear

scoreboard players set inp int 125
function math:marker_pool/_update
execute store result score res int if entity @e[tag=stmp_marker]
tellraw @a ["res: ", {"score":{"name":"res","objective":"int"}}]

scoreboard players set inp int 250
function math:marker_pool/_update
execute store result score res int if entity @e[tag=stmp_marker]
tellraw @a ["res: ", {"score":{"name":"res","objective":"int"}}]

scoreboard players set inp int 35
function math:marker_pool/_update
execute store result score res int if entity @e[tag=stmp_marker]
tellraw @a ["res: ", {"score":{"name":"res","objective":"int"}}]

scoreboard players set inp int 30
function math:marker_pool/_update
execute store result score res int if entity @e[tag=stmp_marker]
tellraw @a ["res: ", {"score":{"name":"res","objective":"int"}}]

scoreboard players set inp int 0
function math:marker_pool/_update
execute store result score res int if entity @e[tag=stmp_marker]
tellraw @a ["res: ", {"score":{"name":"res","objective":"int"}}]