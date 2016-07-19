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

#Question 1
numbers = { one: 1, two: 2, three: 3, four: 4} 
letters =["a", "b", "c", "d"]

numbers.delete_if { |number, integer| integer <= 1 }
p numbers

letters.delete_if {|letter| letter != "b"}
p letters 

#Question 2
numbers = { one: 1, two: 2, three: 3, four: 4} 
letters =["a", "b", "c", "d"]

numbers.delete(:one)
p numbers

letters.delete_at(0)
p letters

#Question 3
numbers = { one: 1, two: 2, three: 3, four: 4} 
letters =["a", "b", "c", "d"]

numbers.keep_if {|number, integer| integer <=2} 
p numbers 

modified_letters.map! { |letter| letter + "!" if letter == "b" }
p modified_letters


#Question 4
numbers = { one: 1, two: 2, three: 3, four: 4} 
letters =["a", "b", "c", "d"]

numbers.reject! {|number, integer| integer <= (numbers.length + 3)} 
p numbers 

i = 0 
while i < letters.length
  letters.pop
end
p letters

