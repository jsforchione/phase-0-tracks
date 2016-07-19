def greeting
  puts "Before block"
  names = ["Brittani", "Jessica"]
  number_of_names = names.length
  number_of_names.times { |i| puts names[i]}
  puts "Goodbye"
end

ice_cream_flavors = ["chocolate", "vanilla", "strawberry", "coffee"]
rated_flavors = { first: "coffee", second: "strawberry", third: "chocolate", fourth: "vanilla"}

ice_cream_flavors.each do |flavor|
  p "ice cream flavor: #{flavor}"
end

rated_flavors.each do |rating, flavor|
  p "My #{rating} favorite is #{flavor}!"
end

modified_flavors = ice_cream_flavors.map! do |flavor|
  p flavor.upcase
end


