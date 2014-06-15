require 'pry'
require 'roo'
require 'writeexcel'
require 'awesome_print'
require 'json'


class SalaryParser
  def initialize(args)
    @input_file_path = args.first
    @sn = 0
    @gender = :male
    @data = {
      :male => [],
      :female => []
    }
    load_excel
    read_excel
  end
  def load_excel
    @xls = Roo::Excel.new(@input_file_path)
    @xls.default_sheet = @xls.sheets[0]
  end
  def read_excel
    (@xls.first_row+7).upto(@xls.last_row) do | line_no |
      row = @xls.row(line_no)
      @sn +=1

      last_cell = row.last.strip.downcase
      # binding.pry if last_cell.length < 8
      if "male" == last_cell
        ap("male equal")
        next
      elsif "female"== last_cell
        ap("female equal")
        @gender = :female
        @sn = 0
        next
      end

      description= [row.last.scan(/\d{2}/).join('-')]
      @data[@gender] << description + [row[2..-2]]
    end
  end
  def run

  end
  def get_data
    @data
  end
end

ss = SalaryParser.new(ARGV)

File.open("./export.json", "w") { |io|  
  io.write(ss.get_data.to_json)
}