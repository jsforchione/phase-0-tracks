def encrypt(password)
index=0

   while index < password.length
     if password[index] == "z"
       password[index] == "a"
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
        password[index] == "z"
      else 
        password[index] = password[index].prev
      end
     index += 1
    end
    return password
end
#decrypt(encrypt("swordfish"))
# this nested method works because the encrypt variables are 
#local variables declared within the encrypt method and called 
#again using the decrypt method
