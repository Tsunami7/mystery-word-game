class Word
  # Stores the provided word in an instance variable and
  # setups up any other instance variables.
  def initialize(word)
    # puts "provide solution to the mystery word"
    # @word= gets.chomp
    @word= word

  # Guess a letter in the word.
  # Should return a boolean. true if the letter is in the word, false if not.
  def guess?(letter)
    # puts "guess letter for the word"
    @word.include?(letter)
  end

  # Whether all letters in the word have been guessed correctly.
  def guessed_all_correct?
    newWord = word.split("")
    
    for 
  end

  # Display the current state of the guessed word for the player.
  def output_word
    puts guess_word
  end

  # Check whether a provided character is a letter
  def self.is_letter?(character)
    character.include?
  end
end

class MysteryWordGame
  # Initialize any state in the game, and start the game loop.
  def initialize
    # begin the first phases
  end

  def ask_for_word
    # ask for word from player1 for the player2 to guess
    # What is the word? Player 2 look away...
    # dog
  end

  def ask_for_letter
    # asks for letter from a player2 to compare against the word
    # Guess a letter:
    # o
    # Yup, the word includes that letter!
    # Oh no! The word doesn't include that letter!
  end

  # Run the game loop, which continues until the player2 wins or loses.
  def game_loop
  end
end

MysteryWordGame.new

# this will allow us to run the code
# mystery_word = Word.new
# new_word = mysteryWord
# puts new

#
word.is_letter?



