class BloodOath
# #initiation_date - return "" in format YYYY-MM-DD
#.all - return Array of all blood oaths

@@all = []

attr_accessor :follower, :cult 
attr_reader :initiation_date


def self.all
    @@all 
end

def initialize(follower, cult)
    @follower = follower
    @cult = cult
    @initiation_date = Time.now.to_s.split[0]
    @@all << self 
end


end