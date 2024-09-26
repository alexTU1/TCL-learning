#Syntax:
#for {set variable} {condition} {incrementation}

puts "Enter a number for your matrix:"
set matrix [gets stdin]
puts "\nOkay, you chose a $matrix x $matrix matrix\n"

puts "Configuring Your Matrix..."
after 1200

for {set i 0} {$i < $matrix} {incr i} {
    for {set j 0} {$j < $matrix} {incr j} {
        puts -nonewline "*    "
        after 20
    }
    puts \n
}