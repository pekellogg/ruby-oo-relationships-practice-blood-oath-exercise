require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new("Trumpers", "Everywhere", 1980, "M'erica First!")
cult2 = Cult.new("Trumpers2", "Even in your dream", 1980, "Make America Great Again!")

cult3 = Cult.new("Pround Boys", "All capitols", 1990, "GUNS GUNS GUNS")
follower1 = Follower.new("Miranda", 78, "Don't mess with mama")
follower2 = Follower.new("Aran", 11, "Vanilla is the best ice cream flavor")

follower3 = Follower.new("Joker", 45, "Let's play a game")

BloodOath.new(follower1, cult1)
BloodOath.new(follower1, cult2)
BloodOath.new(follower2, cult1)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits