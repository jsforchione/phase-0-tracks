# class GuessingGame
# Need a puts statement that has one user enter a word
# Store this word in a variable called word
# Need another puts statement that has another user guess a letter
# Have a While loop that begins at 0 and continues for the length of the word
# i  = 0
# While i < word.length
# Puts “guess another letter”
# i += 1
# end
# need a masked_word variable to make word invisible to the guesser by replacing
# letter with dashes.
# repeated guesses don’t count against user (no code necessary for this function)
# guessing player gets continual feedback in the form of a puts statement that is length of the word, 
# have another While loop that ha If statements inside the original while loop above, that looks like:
#     j = 0
#     while j < word.length
#         if word[j] == guess
#         puts “_ _ _ _ c _”
#         else 
#         puts “_ _ _ _ _ _”
#         end
#     j += 1
#     end
# If game == won 
# Puts “Congratulatory message”
# Else 
# Puts “taunting message”

class GuessingGame
    attr_reader :guess_count
    attr_reader :is_over
    attr_reader :word

    def initialize(word)
        @word = word
        @guess_count = 0
        @is_over = false
        @masked_word = masked_word(word)
        @array_string = []
    end

    def masked_word(word)
        invisible_word = ""
        i = 0
        while i < word.length
            invisible_word += "-"
            i += 1
        end
        invisible_word
    end

    def guess(letter)
        
        if @guess_count > @word.length
            p "Game over, out of guesses! Better luck next time."
            @is_over = true
            return
        end

        if @array_string.include?(letter)
            p "aready guessed #{letter}"
        else
            @guess_count += 1 
            @array_string << letter
            
            if @word.include?(letter)
                i = 0
                while i < @word.length
                    if @word[i] == letter
                        @masked_word[i] = letter
                    end
                    i+=1
                end
                p @masked_word
            else 
                p @masked_word
            end
        end
        
        if @masked_word.include?("-") == false
            @is_over = true
            p "You guessed the word! The word was #{word}"
        end
    end
end

# user interface
# puts "Welcome to the Guessing Game!"


# puts "What is the secret word you want someone to guess?"
# word = gets.chomp.downcase
# game = GuessingGame.new(word)

# while !game.is_over
#     puts "Please guess a letter."
#     letter = gets.chomp.downcase
#     game.guess(letter)
# end

