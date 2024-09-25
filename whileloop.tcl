set x 0.0
#setting decimal # of places
set tcl_precision 2

puts "Type counter value (integer):"
set range_cap [gets stdin];#user input for counter number

puts "Type increment value:"
set interval [gets stdin];#user input for interval

#incrementing x by 0.2 until it reaches 5
while {$x < $range_cap} {
    set x [expr $x + $interval]
    puts "x is: $x"
    #waiting for 50 miliseconds ==> 0.05 seconds
    after 50
}
