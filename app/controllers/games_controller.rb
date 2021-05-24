class GamesController < ApplicationController
  def new
    vowels = %w[A E I O U]
    consonants = ('A'..'Z').to_a - vowels

    picked_vowels = Array.new(4) { vowels.sample }
    picked_consonants = Array.new(6) { consonants.sample }

    @letters = (picked_consonants + picked_vowels).shuffle!
  end

  def score
    guess = params[:guess]
    raise
  end
end
