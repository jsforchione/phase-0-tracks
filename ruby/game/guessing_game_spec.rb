require_relative 'guessing_game'
describe GuessingGame do
    let(:game) {GuessingGame.new("Hello")}

    it "masks the word with dashes that are the length of the word" do
        expect(game.masked_word("Hello")).to eq "-----"
    end

    it "replaces a dash in the masked word with a correct letter guessed" do
        expect(game.guess("hello")).to eq nil
    end

    
end