
puts "Enter first number:"
set num1 [gets stdin]
puts "Enter second number:"
set num2 [gets stdin]

proc add {arg1 arg2} {
    set x [expr $arg1 + $arg2]
    return $x
}

proc subtract {arg1 arg2} {
    set x [expr $arg1 - $arg2]
    return $x
}

proc multiply {arg1 arg2} {
    set x [expr $arg1 * $arg2]
    return $x
}

proc divide {arg1 arg2} {
    set x [expr $arg1. / $arg2]
    return $x
}

puts "$num1 + $num2 = [add $num1 $num2]"
puts "$num1 - $num2 = [subtract $num1 $num2]"
puts "$num1 * $num2 = [multiply $num1 $num2]"
puts "$num1 / $num2 = [divide $num1 $num2]"