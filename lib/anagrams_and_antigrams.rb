require("pry")

module Utility_Functions
  def word_checker?(input)
    if (input.downcase.count 'aeiou') >= 1
      true
    else
      false
    end
  end
  def word_splitter(input)
    input.downcase().split('').sort() 
  end
end

class Text
  include Utility_Functions
  
  def initialize(input1)
    @input1 = input1
  end
  def anagram_checker(input2)
    if word_checker?(@input1) == false
      "'#{@input1}' is not an real word"
    elsif word_checker?(input2) == false
      "'#{input2}' is not a real word"
    elsif word_splitter(@input1) == word_splitter(input2)
      "anagram!"
    else
      "not an anagram"
    end
  end
end