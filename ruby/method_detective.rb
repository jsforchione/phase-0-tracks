# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
=> “InVeStIgAtIoN”
"HeLlO".swapcase!
=> "hElLo"

"zom".insert(2, "o")
=> “zoom”

"enhance".squeeze
=> "    enhance    "

"Stop! You’re under arrest!".upcase
=> "STOP! YOU’RE UNDER ARREST!"
"I'm under arrest!".upcase!
=> "I'M UNDER ARREST!"

"the usual".insert(9, " suspects")
=> "the usual suspects"

" suspects".insert(0, "the usual")
=> "the usual suspects"

"The case of the disappearing last letter".chop
=> "The case of the disappearing last lette"
"abcdefg".chop!
=> "abcdef"

"The mystery of the missing first letter".delete("T")
=> "he mystery of the missing first letter"
"nother way to delete, but modifies the original."

"Elementary,    my   dear        Watson!".squeeze(" ")
=> "Elementary, my dear Watson!"
"Squeezes     together,   cool!".squeeze(" ")
=> "Squeezes together, cool!"

"z".bytes
=> 122 
# (What is the significance of the number 122 in relation to the character z?)
# since "z" is a string it holds an arbitrary sequence of bytes

"How many times does the letter 'a' appear in this string?".count("a")
=> 4