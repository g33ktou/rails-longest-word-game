class GamesController < ApplicationController
  def new
    @letters = []
    10.times do
      letter = ('a'..'z').to_a.sample
      @letters << letter
    end
    #@letters = @letters.join(" ")
  end

  def score
    @answer = params[:name]
    #compter la redondance de chaque lettre
      #verifier que la answer n'ait pas plus x fois la lettre que dans dans letters
    #verifier le la answer n'est pas plus longue que le nbr de letters
    @answer.each do |letter|
      nbletters = letter.count(letter)
      answerletters = @answer.count(letter)
      if answerletters > nbletters
        break
        p "answer not valid"
      end
    end
  end
end
