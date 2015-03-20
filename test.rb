#!/usr/bin/env ruby

    timenow = Time.now.to_i
#    puts "timenow = " + timenow.to_s
    z=0.0

1.step( 100000000,1) { |i| 
    x = 3*i
    z=Math.sqrt(x)
    x=x/i
    timenow = Time.now.to_i
}
puts "timenow = " + timenow.to_s
puts "z = " + z.to_s
