# Pseudocode
# enter_name defines a new array and then runs fake_name 
# until the user types in quit. If the user does not type
# in the word quit, thenre-run the function adding in the
# name the user types and the fake name from fake_name helper
# function
def enter_name
    name_array = []
    keep_running = true
    while keep_running == true
        puts "Please enter a name, enter quit when done."
        input = gets.chomp
        if input == "quit"
            keep_running = false
        else
            new_fake_name =  fake_name(input)
            name_array.push("#{input} is known as #{new_fake_name}")
        end
    end
    return name_array
end
# Pseudocode
# fake_name downcases and splits the user input to characters and stores
# the param into a new var swapped_names. Then set two new arrays that contain all
# vowels or consonants. Then loop through all characters in swapped_names
# and check if it contains vowles or consonants. Depending what the letter is,
# increment the letter to the next letter. Then return the generated fake_name
# after the loop
def fake_name(real_name)
    real_name.downcase!
    names = real_name.split(" ")
    
    i = 0
    while i < names.length 
        first_name = names[i]
        j = i + 1
        while j < names.length
            names[i] = names[j]
            names[j] = first_name
            j += 1
        end
        i += 1 
    end

    swapped_names = names.join(" ")

    vowels = ["a", "e", "i", "o", "u"]
    const =  ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
    
    characters = swapped_names.chars 
    i = 0
    
    while i < swapped_names.length
        if vowels.include? characters[i]
            j = 0
            while vowels[j] != characters[i]
                j+=1
            end
            characters[i] = vowels[j+1]
        elsif const.include? characters[i]
            j = 0
            while const[j] != characters[i]
                j+=1
            end
            characters[i] = const[j+1]
        end
        i+=1
    end
    new_name = characters.join("")
    new_name.split.map(&:capitalize).join(" ")
end