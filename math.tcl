set u 500.0
set v 1550
set sum [expr {$v + $u}]
set a 0.1
set b 0.5
set sum2 [expr {$a * $b}]
set tcl_precision 5; #one of tcl's special variables that allows you to specify the amount of trailing decimal numbers

puts "The sum of u and v is: $sum"
puts "The multiplication of a and b is: $sum2"
puts "The square root of 26 is [expr {sqrt(26)}]"

set x     0.0
set delta 0.1
while { $x <= 1.2 } {
   puts "... create label $x"
   set x [expr {$x + $delta}]
}