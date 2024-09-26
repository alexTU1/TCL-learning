#lists can be created in multiple ways 
#1. set list [list "Item0" "Item1" "Item2"]
#2. set list {{item1} {item2} {item3}}
#3. set list [split "Item1,Item2,Item3" ","] //uses a delimiter to split string
#4. set list "Item1 Item2 Item3"

#You can access a specific index of a list by doing this:
#puts [lindex $list 0] //third argument is the desired index


#Create a function that records the amount of times a single incrementation occured in an array
#Ex: {1,2,4,5,8,10,2,25,26}
#Ouput: 3

proc directIncrCounter {arr} {
    set count 0
    for {set i 0} {$i < [llength $arr]} {incr i} {
            set prev [lindex $arr $i]
            set next [lindex $arr [expr $i + 1]]
            if {[expr $next - $prev] == 1} {
                set count [expr $count + 1]
            }
    }
    return $count
}

set my_list [split "1,2,4,5,8,10,25,26" ","]; #output: 3
set my_list2 [split "1,2,3,4,5,6,25,26" ","]; #output: 6
set my_list3 [split "2,4,6,8,10,12,14,15" ","]; #output: 1
puts "\nWith the \{$my_list\} array, there are [directIncrCounter $my_list] times where it incremented by 1"
puts "With the \{$my_list2\} array, there are [directIncrCounter $my_list2] times where it incremented by 1"
puts "With the \{$my_list3\} array, there are [directIncrCounter $my_list3] times where it incremented by 1\n"


#Adding and Deleting members of a list
set b [list a b {c d e} {f {g h}}]
puts "\nTreated as a list: $b\n length: [llength $b]"

set b [split "a b {c d e} {f {g h}}"]
puts "\nTransformed by split: $b\n length: [llength $b]"

set a [concat a b {c d e} {f {g h}}]
puts "\nConcated: $a\n length: [llength $a]"

lappend a {ij K lm}                        ;# Note: {ij K lm} is a single element
puts "\nAfter lappending: $a\n length: [llength $a]"

set b [linsert $a 3 "1 2 3"]               ;# "1 2 3" is a single element
puts "\nAfter linsert at position 3: $b\n length: [llength $b]"

set b [lreplace $b 3 4 "AA" "BB"]; #this will replace "d" in the original list with these two values
puts "\nAfter lreplacing 3 positions with 2 values at position 3: $b\n length: [llength $b]"