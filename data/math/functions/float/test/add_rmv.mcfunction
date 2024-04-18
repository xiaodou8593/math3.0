#math:float/test/add_rmv

tellraw @a "--- math float add&rmv test ---"

scoreboard players set inp int 35284112
function math:float/_scoreto
function math:float/_to_ifloat

scoreboard players set inp int 85934531
function math:float/_scoreto
function math:float/_print

function math:float/_add
function math:float/_print

function math:float/_rmv
function math:float/_print