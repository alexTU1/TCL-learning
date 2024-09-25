puts "\n\tWelcome to the IsItGreaterThan Test\n"
puts "**********************"
puts "Please Enter your Name"
puts "**********************"
set username [gets stdin]
puts "------\n"

#get first number
puts "***************************************************"
puts "We will start by asking you to enter any number > 0"
puts "***************************************************"
set a [gets stdin]
if {$a % 2 == 0} {
    puts "Nice, You entered: $a. I see you like even numbers. Even Steven"
} else {
    puts "Nice, You entered: $a. I'm not really a big fan of odd numbers but okay, odd-ball."
}
puts "-------\n"

#get second number
puts "*********************************************************"
puts "Okay great, Now lemme get another number; any number > 0."
puts "*********************************************************"
set b [gets stdin]
if {$b % 2 == 0} {
    if {$a % 2 == 0} then {puts "Nice, You entered: $b. How original, another even number."} else {puts "Nice, You entered: $b. I see you like even numbers. Even Steven"}   
} else {
     if {$a % 2 != 0} then {puts "Nice, You entered: $b. How original, another odd number."} else {puts "Nice, You entered: $b. I'm not really a big fan of odd numbers but okay, odd-ball."}
}
puts "-------\n\n"

#get results
puts "**********************"
puts "Waiting for Results..."
puts "**********************"
#waits 2 seconds
after 2000 
puts "Variable\tValue"
puts "\$a\t\t$a"
puts "\$b\t\t$b"

if {$a > $b} {
    puts "\n$a is greater than $b"
} elseif {$a < $b} {
    puts "\n$b is greater than $a"
} else {
    puts "\n$a equals $b"
}
puts "------"

puts "\nThank you, $username! See you again soon.\n"