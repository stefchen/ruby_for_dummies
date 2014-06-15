require 'pry'

first_array = ["Matz", "Guido"]

second_array = Array.new(first_array) #=> ["Matz", "Guido"]

first_array.equal? second_array       #=> false

tmp = Array.new(6){ |index| index ** 3 }

a = Array.new(50, "Kevin")
# => [{}, {}]
binding.pry
a[0]['cat'] = 'feline'

a[1]['cat'] = 'Felix'

binding.pry
