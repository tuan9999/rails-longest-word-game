class GamesController < ApplicationController
  attr_accessor :array

  def new
    @array = []
    @letters = ('a'..'z').to_a
    for i in 1..10
      @array << @letters.sample
    end
  end

  def score
    @word = params[:word].split
  end
end
