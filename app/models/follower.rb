class Follower

    @@all = []

    attr_accessor :name, :age, :life_motto, :cult

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def self.all
        @@all 
    end

    def cults 
        #refactor -- SINGLE SOURCE OF TRUTH 
        BloodOath.all.select do |connection|
            connection.follower == self
        end.map do |connection|
            connection.cult
        end
    end

    def join_cult(cult)
        BloodOath.new(self, cult) 
    end

    def self.of_a_certain_age(age)
        self.all.select do |follower| 
            follower.age >= age 
        end
    end

end