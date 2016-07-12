def encrypt(password)
	index=0

   while index < password.length
   letter=password[index]
   p letter.next 
   index +=1

   end
   def decrypt(password)
   	index = 0
   	while index < password.length 
   	letter=password[index]
   	p letter
   	index += 1 
    end
   end
end