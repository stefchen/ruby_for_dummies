require 'pry'
a = [ "a", "b", "c", "d" ]
a.collect { |x| x + "!" }        #=> ["a!", "b!", "c!", "d!"]
cc = a.map { |x| x + "!" }        #=> ["a!", "b!", "c!", "d!"]
a.map.with_index{ |x, i| x * i } #=> ["", "b", "cc", "ddd"]
a                                #=> ["a", "b", "c", "d"]

binding.pry