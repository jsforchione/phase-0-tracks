def designer
  puts "What is the client's name?"
  client_name = gets.chomp

  puts "What is the client's age? (example: 40)"
  age = gets.chomp.to_i

  puts "How many children does the client have? (example: 1)"
  children = gets.chomp.to_i

  puts "What is the client's decor theme?"
  decor = gets.chomp

  puts "Does the client like succulents? (yes or no)"
  succulents = gets.chomp

  client = {
    name: client_name,
    age: age,
    children: children,
    decor: decor,
    succulents: succulents
  }

  p client

  puts "Do you want to update a key? (enter key name or enter 'none'."
  updated_key = gets.chomp
  if updated_key == "none"
  	#dont think yield is correct but break didn't work
    return client
  else 
  	puts "What do you want to change the value to?"
    new_value = gets.chomp
    updated_key.to_sym
  
    if updated_key == "name"
      client[:name] = new_value
    elsif updated_key == "age"
      client[:age] = new_value
    elsif updated_key == "children"
      client[:children] = new_value
    elsif updated_key == "decor"
      client[:decor] = new_value
    else 
      client[:succulents] = new_value
    end
  end

  p client
end