def fake_name(real_name)
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

    p swapped_names = names.join(" ")

    vowels = ["a", "e", "i", "o", "u"]
    characters = swapped_names.chars 
    i = 0
    while i < swapped_names.length
        j = 0
        while j < vowels.length
            if characters[i] == vowels[j]
                characters[i] = vowels[j].next
            else
                characters[i] = characters[i].next
            end
            j += 1
        end
        i += 1
    end

    p characters.join("")

end    