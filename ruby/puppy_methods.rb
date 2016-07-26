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

  def initialize
    puts "Initializing new puppy instance ..."
  end

  def wag
    puts "*wags tail*"
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

  def fifty_instances(name)
    instances = []
    i = 0
    while i < 50
        new_cat = Cat.new
        instances.push(new_cat)
        i += 1
    end
    p instances.inspect

    instances.each do |i|
        new_cat.speak(5)
        puts new_cat.cat_years(3)
    end
  end
end
salem = Cat.new