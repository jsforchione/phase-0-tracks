def name(password)
  puts "Would you like to encrypt or decrypt your password"
  input = gets.chomp
  puts "What is the password?"
  password = gets.chomp
    if input == "encrypt"
      return encrypt(password)
    else 
      return decrypt(password)
    end
end

def encrypt(password)
index=0

   while index < password.length
     if password[index] == "z"
       password[index] = "a"
     else 
       password[index] = password[index].next

     end
    index += 1
   end
   return password
end

class String
  def prev
   return (self.ord - 1).chr
  end
end

def decrypt(password)
  index = 0
    while index < password.length 
      if password[index] == "a"
        password[index] = "z"
        index += 1
      else 
        password[index] = password[index].prev
        index += 1
      end
     
    end
    return password
end
#decrypt(encrypt("swordfish"))
# this nested method works because the encrypt variables are 
#local variables declared within the encrypt method and called 
#again using the decrypt method