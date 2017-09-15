class WordsController < ApplicationController
  def index
    @words = Word.alphabetize_into_rn_section_list
    puts @words
    render json: {words: @words, count: Word.count, first_id: @words[:first_id], last_id: @words[:last_id] }
  end

  def show
    @word = Word.find(params[:id])
    render json: @word
  end

  def random
    ids = Word.pluck(:id)
    @random_word = Word.find(ids.sample)
    render json: @random_word
  end
end
