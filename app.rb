require 'pry'
require './lib/user'
require './lib/event'

user1 = User.new('ao@.com', 34)
user2 = User.new('a@.com', 24)

event = Event.new("2019-01-13 09:00", 30, "standup quotidien", ['a@gmail.com', 'b@gmail.com'])

binding.pry
