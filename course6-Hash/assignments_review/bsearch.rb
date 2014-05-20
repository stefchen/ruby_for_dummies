require 'pry'
ary = [0, 4, 7, 10, 12]
ary.bsearch {|x| x >=   4 } #=> 4
ary.bsearch {|x| x >=   6 } #=> 7
ary.bsearch {|x| x >=  -1 } #=> 0
ary.bsearch {|x| x >= 100 } #=> nil



binding.pry
a = [ 11, 22, 33, 44 ]
a.fetch(1)               #=> 22
a.fetch(-1)              #=> 44
y=a.fetch(4, 'cat')        #=> "cat"
z=a.fetch(3, 'dog')        #=> "cat"
a.fetch(100) { |i| puts "#{i} is out of bounds" }
                         #=> "100 is out of bounds"


binding.pry

ary = [0,  10, 12, 4, 6] 
ary.bsearch {|x| x >=   4 } #=> 4
ary.bsearch {|x| x >=   6 } #=> 7
ary.bsearch {|x| x >=  -1 } #=> 0
ary.bsearch {|x| x >= 100 } #=> nil



ary = [0, 4, 7, 10, 12]
# try to find v such that 4 <= v < 8
ary.bsearch {|x| 1 - x / 4 } #=> 4 or 7
# try to find v such that 8 <= v < 10
ary.bsearch {|x| 4 - x / 2 } #=> nil