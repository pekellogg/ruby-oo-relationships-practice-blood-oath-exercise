# ruby tools/console.rb
class Cult

    @@all = []
    
    attr_accessor :name, :location, :slogan, :follower
    attr_reader :founding_year, :cult_population

    def initialize(name, location, founding_year,slogan) # slogan, cult_population
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        # @follower = follower
        @@all << self
    end

    def self.all
        @@all
    end

    def recruit_follower(follower)
        # add more followers to the cult
        BloodOath(follower, self)
    end

    #helper method
    def list_of_follower
        BloodOath.all.select do |connection|
            connection.cult == self
        end.map do |connection|
            connection.follower
        end
    end

    def cult_population
        self.list_of_follower.count
    end

    def self.find_by_name(name)
        self.all.select do |single_instance|
            name == single_instance.name
        end
    end

    
    def self.find_by_location(location)
        self.all.select do |single_instance|
            location == single_instance.location
        end
    end
    
    def self.find_by_founding_year(year)
        self.all.select do |single_instance|
            year == single_instance.founding_year
        end
    end
    
end
