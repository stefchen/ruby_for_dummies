# encoding: utf-8
require 'roo'
require 'writeexcel'
require 'pry'
require 'pry-nav'
require 'pry-remote'

search_target = File.expand_path('./*', File.dirname(__FILE__))

binding.pry

Dir[search_target].each do |current_file|

  p current_file

  if File.directory? current_file
    p "#{current_file} is a directory"
  end
  
end
