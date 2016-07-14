def hamster
  puts "What is the hamster's name?"
  name = gets.chomp
  puts "What is the volume level of your hamster? (1-10)"
  volume = gets.chomp.to_i
  puts "What is the hamster's fur color?"
  color = gets.chomp
  puts "Is the hamster a good candidate for adoption? (yes/no)"
  adoption = gets.chomp
  puts "What is your hamster's estimated age?"
  age = gets.chomp

  if age.empty?
    age = "nil"
  else age = gets.chomp.to_i
  end

  puts "Hamster's name: #{name}"
  puts "Volume level: #{volume}"
  puts "Hamster's fur color: #{color}"
  puts "Good candidate for adoption: #{adoption}"
  puts "Hamster's estimated age: #{age}"
end
