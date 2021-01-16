class Follower

    @@all = []

    attr_accessor :name, :age, :life_motto, :cult

    def initialize(name, age)
        @name = name
        @age = age
        @life_motto = ""
        @@all << self 
        @cult = cult
    end

    def self.all
        @@all 
    end

    def cults 
        #refactor -- SINGLE SOURCE OF TRUTH 
        Cult.all.select do |cult|
            if cult.follower == self 
                cult 
            end
        end
    end

    def join_cult(cult)
        BloodOath.new(self, cult) 
        cult.recruit_follower(self)
        self.cult << cult 
    end

    def self.of_a_certain_age(age)
        @@all.select do |follower| 
            follower.age >= age 
        end
    end

end