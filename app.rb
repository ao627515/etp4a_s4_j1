require 'pry'
require './lib/user.rb'

user = User.new('ao@.com', 34)

puts user.all

puts User.instance_methods(false)

