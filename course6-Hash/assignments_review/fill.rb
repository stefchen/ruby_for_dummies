require 'pry'
a = [ "a", "b", "c", "d" ]
binding.pry
a.fill("x")              #=> ["x", "x", "x", "x"]
a.fill("z", 2, 2)        #=> ["x", "x", "z", "z"]
a.fill("y", 0..1)        #=> ["y", "y", "z", "z"]
a.fill { |i| i*i }       #=> [0, 1, 4, 9]

a.fill(-2) { |i| i*i*i } #=> [0, 1, 8, 27]