class Santa
    def speak
        p "Ho, ho ho! Haaaappy holidays!"
    end

    def eat_milk_and_cookies(cookie_type)
        p "That was a good #{cookie_type}"
    end

    def initialize(gender, ethnicity)
        @gender = gender
        @ethnicity = ethnicity
        @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
        @age = 0
        p "Initializing Santa instance ..."
    end

    def celebrate_birthday
        @age = 1
    end

    def get_mad_at(name)
        last = name
        @reindeer_ranking.delete(name)
        @reindeer_ranking[-1] = last
        p @reindeer_ranking
    end

    def gender=(new_gender)
        @gender = new_gender
    end

    def age
        return @age
    end

    def ethnicity
        return @ethnicity
    end
end
#kris_kringle = Santa.new
#kris_kringle.speak
santas = []
ex_genders = ["N/A", "bigender", "female", "male"]
ex_ethnicities = ["Unicorn-icopia", "Polynesian", "Latino", "Indian"]
ex_genders.length.times do |i|
  santas << Santa.new(ex_genders[i], ex_ethnicities[i])
end
kris_kringle = Santa.new("male", "black")

kris_kringle.ethnicity

kris_kringle.get_mad_at("Rudolph")

kris_kringle.gender=("unknown")

kris_kringle.age

kris_kringle.celebrate_birthday