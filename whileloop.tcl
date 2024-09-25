set x 0.0
#setting decimal # of places
set tcl_precision 2

#incrementing x by 0.2 until it reaches 5
while {$x < 5} {
    set x [expr $x + 0.2]
    puts "x is: $x"
    #waiting for 50 miliseconds ==> 0.05 seconds
    after 50
}
