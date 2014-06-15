require "pry"

Array.try_convert([1])   #=> [1]
Array.try_convert("1")   #=> nil

arg =[1,3,5]
if tmp = Array.try_convert(arg)
  # the argument is an array
elsif tmp = String.try_convert(arg)
  # the argument is a string
end

binding.pry