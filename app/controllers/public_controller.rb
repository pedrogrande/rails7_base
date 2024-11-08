class PublicController < ApplicationController

  def cipher 
    @cipher_shift = 13
    @alphabet = ('A'..'Z').to_a
    @numbers = (1..26).to_a
    @answer_letters = "YOU CRACKED THE CODE"
    @encoded_letters = caesar_cipher(@answer_letters)
  end

  def home
  end

  def about
    @cipher_shift = 13
    @alphabet = ('A'..'Z').to_a
    @numbers = (1..26).to_a
    @starting_matrices = @alphabet.zip(@numbers).to_h
    @answer_letters = "YOU CRACKED THE CODE"
    # put answer letters into an array, for each element, get its position in the alphabet and put these positions in a new array with any spaces entered as 0
    @answer_positions = @answer_letters.chars.map { |letter| @starting_matrices[letter] || 0 }

    @shifted_letters = caesar_cipher(@answer_letters)

  end

  def contact
  end

  private 

  def caesar_cipher(string, shift = 13)
    alphabet   = Array('A'..'Z')
    encrypter  = Hash[alphabet.zip(alphabet.rotate(shift))]
    string.chars.map { |c| encrypter.fetch(c, " ") }
  end
end
