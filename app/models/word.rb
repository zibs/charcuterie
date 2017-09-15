class Word < ApplicationRecord
  ALPHABET = "ABCDEFGHIJKLNMOPQRSTUVWXYZ"
  def self.alphabetize_into_rn_section_list
    section_list = []
    list_view = {}
    ALPHABET.each_char do |chr|
      words_for_letter = Word.where("word ILIKE ?", "#{chr}%")
      section_list << {key: chr, data: words_for_letter}
      list_view[chr] = words_for_letter
    end
    {section_list: section_list, list_view: list_view, first_id: first.id, last_id: last.id}
  end


end
