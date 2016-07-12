def vampires(person)
  puts "What is your name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.chomp

  puts "What year were you born?"
  year = gets.chomp

  puts "Our company cafeteria serves garlic bread.
  Should we order some for you?"
  garlic = gets.chomp

  puts "Would you like to enroll in the company
  health insurance plan?"
  insurance = gets.chomp

  result = nil

  if name == "Drake Cula" || name == "Tu Fang"
    result = "Definitely a vampire."
  elsif age.to_i < 100 && (garlic = "yes" || insurance = "yes")
    result = "Probably not a vampire."
  elsif age.to_i >= 100 && (garlic = "no" || insurance = "no")
    result = "Probably a vampire."
  elsif age.to_i >= 100 && garlic = "no" && insurance = "no"
    result = "Almost certainly a vampire."
  else result = "Results inconclusive."
  end

  p result 
end 