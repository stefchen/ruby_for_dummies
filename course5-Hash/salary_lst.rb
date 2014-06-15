# encoding: utf-8
require 'awesome_print'
require 'pry'

attendees_lst =[
  [:Mike, 500],
  [:Zina, 300],
]
attendees_hash ={
  :Mike => 500,
  :Zina => 300,
}
p "please input name:"
c = gets.chomp.to_sym
p attendees_hash[:Zina]
#find mike salary 
