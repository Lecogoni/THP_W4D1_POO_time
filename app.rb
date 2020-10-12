require './lib/event.rb'
require './lib/user.rb'
require './lib/EventCreator.rb'

paul = User.new('paul', 20)


event = Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
event2 = Event.new("2020-10-12 15:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])

julie = User.new("julie@julie.com", 35)
jean = User.new("jean@jean.com", 23)
claude = User.new("claude@claude.com", 75)



binding.pry
