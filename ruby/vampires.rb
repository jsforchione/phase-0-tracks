def vampires
  puts "How many employees will be processed?"
  employees = gets.chomp.to_i

  i = 0
  while i < employees

    result = nil

    puts "What is your name?"
    name = gets.chomp

    puts "How old are you?"
    age = gets.chomp

    puts "What year were you born?"
    year = gets.chomp

    age_correct = true
    age2 = (2016 - year.to_i)
    if age2 != age.to_i
      age_correct = false
    end

    puts "Our company cafeteria serves garlic bread. Should we order some for you?"
    garlic = gets.chomp

    puts "Would you like to enroll in the company health insurance plan?"
    insurance = gets.chomp

    allergies = nil

    until allergies == "done" || allergies == "sunshine"
      puts "Do you have any allergies? If so, please name them one at a time. When you are done naming them type \"done\" "
      allergies = gets.chomp
      if allergies == "sunshine"
        result = "Probably a vampire."
      end
    end
    if allergies == "sunshine"
      result = "Probably a vampire."
    elsif name == "Drake Cula" || name == "Tu Fang"
      result = "Definitely a vampire."
    elsif (age_correct == true) && (garlic == "yes" || insurance == "yes")
      result = "Probably not a vampire."
    elsif age_correct == false && (garlic == "no" || insurance == "no")
      result = "Probably a vampire."
    elsif age_correct == false && garlic == "no" && insurance == "no"
      result = "Almost certainly a vampire."
    else 
      result = "Results inconclusive."
    end
    p result 
    i += 1
  end
  p "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
  return nil
end
