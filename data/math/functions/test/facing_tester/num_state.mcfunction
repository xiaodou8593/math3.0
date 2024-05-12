#math:test/facing_tester/num_state
# math:test/facing_tester/main调用

scoreboard players operation inp int = res int
function math:test/string/_slice

data modify storage math:io input set value "num"
function math:test/pstring/_from_raw
function math:test/string/_insert

function math:test/string/_rephi
function math:test/string/_to_raw
data modify storage marker_control:io result.cur_state set from storage math:io result

function math:test/rstring/_todec
scoreboard players operation facing_tester_num int = dec int