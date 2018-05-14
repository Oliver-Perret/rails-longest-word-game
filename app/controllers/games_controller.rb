class GamesController < ApplicationController


  def new

    @letters = ("a".."z").to_a.sample(10)

  end

  def score
  @grid = params[:grid].gsub(/[^a-z,]/,'').split(",").sort
  @word = params[:name].split("").sort
  @word.all? {|letter| @word.count(letter) <= @grid.count(letter)}

    # params[:name] ==> string

  end
end
