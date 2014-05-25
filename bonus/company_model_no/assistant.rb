# encoding: utf-8
require 'roo'
require 'pry'

todo_excel = ARGV[0]
toread_excel =ARGV[1] 
#read Excel
todo = Roo::Excel.new(todo_excel)
toread = Roo::Excel.new(toread_excel)

# select sheet 1 to read
todo.default_sheet = todo.sheets[0]
toread.default_sheet = toread.sheets[0]

(todo.first_row+1).upto(todo.last_row) do |line_no|
  p( todo.row(line_no))
end

binding.pry

