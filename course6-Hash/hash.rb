# encoding: utf-8
require 'awesome_print'
require 'pry'

attendees_lst =[
  [:Mike, 500],
  [:Zina, 300],
  [:Mooncake, 100],
  [:Stephanie, 700],
]

attendees_hash = {
  "a" => 123,
  "c" => 4789,
  "b" => 456,
}

attendees_lst.each do |user|
  attendees_hash[user.first] = user.last
end
binding.pry

p "please input name:"
name = $stdin.gets.chomp.to_sym
binding.pry

#find mike salary 
