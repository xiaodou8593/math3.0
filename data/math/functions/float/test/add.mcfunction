#math:float/test/add

tellraw @a "--- math float add test ---"

scoreboard players set inp int 85934530
function math:float/_scoreto
function math:float/_to_ifloat

scoreboard players set inp int 85934531
function math:float/_scoreto
function math:float/_print

function math:float/_rmv
function math:float/_print