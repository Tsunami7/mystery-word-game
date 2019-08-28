class Word
  # Stores the provided word in an instance variable and
  # setups up any other instance variables.
  attr_accessor :word, :letter_counter, :guess_word


  def initialize(word)
    # puts "provide solution to the mystery word"
    # @word= gets.chomp
    @word = word
    @letter_counter = 0
    @guess_word = Array.new(word.length) {'_'}
  end

  #this is a getter so gets info

  # Guess a letter in the word.
  # Should return a boolean. true if the letter is in the word, false if not.
  def guess?(letter)
    # puts "guess letter for the word"
    @word.include?(letter)
  end

  # Whether all letters in the word have been guessed correctly.
  def guessed_all_correct?
    if letter_counter == word.length
      return true
    end
    false
  end

  # Display the current state of the guessed word for the player.
  def output_word
    print guess_word
  end

  # Check whether a provided character is a letter
  def self.is_letter?(character)
    alphabet = ('a'..'z').to_a

    while !alphabet.include?(character)
      puts "Invalid character. Please give a letter"
      character = gets.chomp
    end
    character 
  end
end

class MysteryWordGame
  attr_accessor :secret, :correct_word, :lives
  # Initialize any state in the game, and start the game loop.
  def initialize
    # begin the first phases
    @secret=''
    @correct_word = []
    @lives = 3
  end
  
  def ask_for_word
    # ask for word from player1 for the player2 to guess
    # What is the word? Player 2 look away...
    # dog
    puts "Player 1 enter Secret word: "
    @secret = Word.new(gets.chomp)
    @correct_word = @secret.word.split("")
  end

  def ask_for_letter
    # asks for letter from a player2 to compare against the word
    # Guess a letter:
    # o
    # Yup, the word includes that letter!
    # Oh no! The word doesn't include that letter!
    puts "Player 2 enter letter:"
    guessLetter = Word.is_letter?(gets.chomp)
    if secret.guess?(guessLetter)
      # enumerable do and end
      correct_word.each_with_index do |letter, index|
        if letter == guessLetter
          secret.letter_counter += 1
          secret.guess_word[index] = guessLetter #replaces '_' with guessLetter
        end
      end
      puts "#{guessLetter} Yup, the word includes that letter!"
    else
      @lives -= 1
      puts "#{guessLetter} Oh no! The word doesn't include that letter!"
    end
    
  end

  # Run the game loop, which continues until the player2 wins or loses.
  def game_loop
    ask_for_word

    while !(lives == 0 || secret.guessed_all_correct?)
      ask_for_letter
      secret.output_word

      puts lives, "number of lives"
      puts  secret.letter_counter, "Letter count"  
    end

    if lives == 0
      puts "Game Over you lose"
    elsif secret.guessed_all_correct?
      puts "You Win!"
    else
      # raise error console.log
      raise "Something went wrong!"
    end

  end
end

hangman = MysteryWordGame.new

hangman.game_loop




