# encoding: utf-8
require 'roo'
require 'writeexcel'
require 'pry'
require 'pry-nav'
require 'pry-remote'


search_target=File.expand_path('./*', File.dirname(__FILE__))

Dir[search_target].each do |current_file|


  if File.directory? current_file
    p "#{current_file} is a directory"
 

todo_excel = File.expand_path("todo.xls",current_file)
data_source_excel =File.expand_path("database.xls",current_file)

#read Excel
todo = Roo::Excel.new(todo_excel)
data_source = Roo::Excel.new(data_source_excel)

# select sheet 1 to read
todo.default_sheet = todo.sheets[0]
data_source.default_sheet = data_source.sheets[0]

# wehre to store
todo_lst = []
data_source_lst = []

# read todo excel
(todo.first_row+1).upto(todo.last_row) do |line_no|
  todo_lst << todo.row(line_no)
end



# read data_source excel
(data_source.first_row+7).upto(data_source.last_row) do |line_no|
  data_source_lst << data_source.row(line_no)
end

#each todo list
todo_lst.each do | todo |
  sn = todo[2]
   data_source_lst.each do |candidate|
   	test=candidate[0].to_i

  #when find the target, save the nationality to todo_lst
     if sn == candidate[0].to_i.to_s 
       todo << candidate[3]
       break
     end
   end

 end

export = File.expand_path('export.xls',current_file)
#export excel 
  wb = WriteExcel.new(export)
  ws = wb.add_worksheet

  todo_lst.each.with_index(0) do |todo, i|
   todo.each.with_index(0) do |cell, j|
    ws.write(i, j, cell.to_s )
   end
 end

 # remember to close it
 wb.close()
  end
end

