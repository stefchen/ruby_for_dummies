# encoding: utf-8
require 'roo'
require 'awesome_print'
require 'pry'
require 'action_view'
include ActionView::Helpers

excel_filename= ARGV[0]
#read Excel
excel = Roo::Excel.new(excel_filename)
salary_lst = []
output = Array.new
summary = Hash.new
excel.default_sheet = excel.sheets[0]

(excel.first_row+1).upto(excel.last_row) do |line_no|
  this_row = excel.row(line_no)
  name = this_row[1].downcase + " " + this_row[2].downcase
  summary[name] = [this_row.first] + this_row[4..-1]
end

while c = $stdin.gets.downcase.chomp and c != 'q'
  next if 0 == c.strip.length   
  result = summary.keys.grep(/#{c}/)
  ap("Total: #{result.count}")
  binding.pry
  result.each do |key|
    ap key
    ap(summary[key])
    binding.pry
  end
end
p "bye~bye~"