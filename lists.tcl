#lists can be created in multiple ways 
#1. set list [list "Item0" "Item1" "Item2"]
#2. set list {{item1} {item2} {item3}}
#3. set list [split "Item1,Item2,Item3" ","] //uses a delimiter to split string

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