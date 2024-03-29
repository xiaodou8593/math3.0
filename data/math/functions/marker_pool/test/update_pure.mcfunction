#math:marker_pool/test/update_pure

tellraw @a "--- marker_pool update_pure test ---"

function math:marker_pool/_clear

scoreboard players set inp int 125
function math:marker_pool/_update_pure
execute store result score res int if entity @e[tag=stmp_marker,tag=stmp_marker_temp]
tellraw @a ["res: ", {"score":{"name":"res","objective":"int"}}]

scoreboard players set inp int 250
function math:marker_pool/_update_pure
execute store result score res int if entity @e[tag=stmp_marker,tag=stmp_marker_temp]
tellraw @a ["res: ", {"score":{"name":"res","objective":"int"}}]

scoreboard players set inp int 35
function math:marker_pool/_update_pure
execute store result score res int if entity @e[tag=stmp_marker,tag=stmp_marker_temp]
tellraw @a ["res: ", {"score":{"name":"res","objective":"int"}}]

scoreboard players set inp int 30
function math:marker_pool/_update_pure
execute store result score res int if entity @e[tag=stmp_marker,tag=stmp_marker_temp]
tellraw @a ["res: ", {"score":{"name":"res","objective":"int"}}]

scoreboard players set inp int 0
function math:marker_pool/_update_pure
execute store result score res int if entity @e[tag=stmp_marker,tag=stmp_marker_temp]
tellraw @a ["res: ", {"score":{"name":"res","objective":"int"}}]