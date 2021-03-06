interp recursionlimit {} [expr {10000}]

proc ack {m n} {
    if {$m == 0} {
        expr {$n + 1}
    } elseif {$n == 0} {
        ack [expr {$m - 1}] 1
    } else {
        ack [expr {$m - 1}] [ack $m [expr {$n - 1}]]
    }
}

puts [ack [lindex $argv 0] [lindex $argv 1]]
