# ruby tools/console.rb

class Cult

    @@all = []
    
    attr_accessor :name, :location, :slogan, :cult_population
    attr_reader :founding_year

    def initialize(name, location, founding_year) # slogan, cult_population
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = ""
        @cult_population = 0
        @follower = []
        @@all << self
    end

    def self.all
        @@all
    end

    def recruit_follower(follower)
        # add more followers to the cult
        @cult_population += 1
    end

    def self.find_by_name(name)
        @@all.select do |single_instance|
            name == single_instance.name
        end
    end

    def self.find_by_founding_year(year)
        @@all.select do |single_instance|
            year == single_instance.founding_year
        end
    end

    def self.find_by_location(location)
        @@all.select do |single_instance|
            location == single_instance.location
        end
    end
    
    # attr_reader 
end
