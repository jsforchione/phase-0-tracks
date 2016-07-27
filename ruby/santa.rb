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
end
#kris_kringle = Santa.new
#kris_kringle.speak
santas = []
ex_genders = ["N/A", "bigender", "female", "male"]
ex_ethnicities = ["Unicorn-icopia", "Polynesian", "Latino", "Indian"]
ex_genders.length.times do |i|
  santas << Santa.new(ex_genders[i], ex_ethnicities[i])
end