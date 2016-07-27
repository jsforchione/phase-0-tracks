#module Shout
#  def self.yell_angrily(words)
#    words + "!!!" + " :("
#  end

#  def self.yell_happily(words)
#    words + "!" + " :))"
#  end 

#end

#Shout.yell_happily("I'm so happy")
#Shout.yell_angrily("I'm so angry")

module Shout
    def shout(words)
        puts "#{words}!!!!!!"
    end
end

class Coach
    include Shout
end

class Parent
    include Shout
end

football_coach = Coach.new
football_coach.shout("Run faster you sissies")

soccer_coach = Coach.new
soccer_coach.shout("Goal")

mom = Parent.new
mom.shout("You're gonna be late for school")

dad = Parent.new
dad.shout("You did what?")


