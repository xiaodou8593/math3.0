#math:float/test/score

tellraw @a "--- math float score test ---"

scoreboard players set inp int 8593453
function math:float/_scoreto
function math:float/_print
function math:float/_toscore
tellraw @a ["res: ", {"score":{"name":"res","objective":"int"}}]