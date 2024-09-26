#Syntax:
#for {set variable} {condition} {incrementation}

puts "Enter a number for your matrix:"
set matrix [gets stdin]
puts "\nOkay, you chose a $matrix x $matrix matrix\n"

puts "Configuring Your Matrix..."
after 1200

for {set i 0} {$i < $matrix} {set i [expr $i + 1]} {
    for {set j 0} {$j < $matrix} {set j [expr $j + 1]} {
        puts -nonewline "*    "
        after 50
    }
    puts \n
}