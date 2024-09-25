#Setting a simple variable with multiple words
set var "This is my value for the var variable"
puts "$var"

#Outputting 2 variables in one puts statement
set Y 1.24
set label "The value of Y is: "
puts "$label $Y"

set Z Albany
set Z_LABEL "The Capitol of New York is: "

puts "$Z_LABEL $Z"   ;# Prints the value of Z
puts "$Z_LABEL \$Z"  ;# Prints a literal $Z instead of the value of Z

puts "\nBen Franklin is on the \$100.00 bill"

set a 100.00
puts "Washington is not on the $a bill"    ;# This is not what you want
puts "Lincoln is not on the $$a bill"      ;# This is OK
puts "Hamilton is not on the \$a bill"     ;# This is not what you want
puts "Ben Franklin is on the \$$a bill"    ;# But, this is OK

puts "\n................. examples of escape strings"
puts "Tab\tTab\tTab"
puts "This string prints out \non two lines"
puts "This string comes out\
on a single line"