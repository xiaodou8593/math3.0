#math:float/test/mult_div

tellraw @a "--- math float mult&div test ---"

scoreboard players set inp int 35284112
function math:float/_scoreto
function math:float/_to_ifloat

scoreboard players set inp int 85934531
function math:float/_scoreto
function math:float/_print

function math:float/_mult
function math:float/_print

function math:float/_div
function math:float/_print