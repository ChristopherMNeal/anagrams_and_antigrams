require("pry")
require ("dictionary_lookup")

module Utility_Functions
  def word_checker(input)
    words = input.gsub(/[^a-zA-Z ]/,'').split(" ")
    not_word = []
    words.each do |word|
      results = DictionaryLookup::Base.define(word)

      if results == []
        not_word.push(word)
      end
    # common_y_words = ["by", "cry", "dry", "drys", "fly", "fry", "glyph", "glyphs", "gym", "gyms", "hymn", "lymph", "lymphs", "lynx", "myth", "myths", "nymph", "nymphs", "ply", "pry", "rhythm", "rhythms", "shy", "sky", "sly", "say", "spry", "spy", "sty", "stymy", "sync", "syncs", "try", "why", "whys", "wry"]
    # words.each do |word|
    #   if (!common_y_words.index(word)) && (word.downcase.count 'aeiou') == 0
    #     not_word.push(word)
    #   end
    end
    not_word
  end

  def word_splitter(input)
    input.downcase().gsub(/[^a-z]/,'').split('').sort() 
  end

  def array_intersection(input1, input2)
    input1 & input2
  end
end

class Text
  include Utility_Functions
  
  def initialize(input1)
    @input1 = input1
  end

  def anagram_checker(input2)
    split1 = word_splitter(@input1)
    split2 = word_splitter(input2)
    compared_array = array_intersection(split1, split2)
    if word_checker(@input1).length >= 1
      "'error! the following aren't real words: #{word_checker(@input1).join(", ")}'"
    elsif word_checker(input2).length >= 1
      "error! the following aren't real words: '#{word_checker(input2).join(", ")}'"
    elsif split1 == split2
      "'#{@input1}' and '#{input2}' are anagrams!"
    elsif (compared_array.length() == 0)
      "'#{@input1}' and '#{input2}' are antigrams!"
    else
      "'#{@input1}' and '#{input2}' are neither anagrams nor a antigrams! they have #{compared_array.length} letters in common: '#{compared_array.join(", ")}'"
    end
  end
end

