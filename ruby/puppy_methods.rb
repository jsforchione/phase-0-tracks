class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(times)
    i = 0
    while i < times.to_i
        puts "Woof!"
        i += 1
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    dog_years = human_years.to_i*7
    dog_years
  end
#add one more trick
  def initialize
    puts "Initializing new puppy instance ..."
  end

end
fido = Puppy.new

class Cat

  def initialize
    puts "Initializing new cat instance ..."
  end

  def speak(times)
    i = 0
    while i < times.to_i
        puts "Meow!"
        i += 1
    end
  end

  def cat_years(human_years)
    cat_years = human_years.to_i*7
    cat_years
  end

  #def fifty_instances(name)
    #names = name
    #i = 0
    #while i < 50
        #names = Cat.new
        #puts names
        #i += 1
    #end
  #end
end
salem = Cat.new