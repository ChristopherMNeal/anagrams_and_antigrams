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

  def array_intersection(input1, input2)
    # []
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
    # compared_array = array_intersection(split1, split2)
    if word_checker?(@input1) == false
      "'#{@input1}' is not an real word"
    elsif word_checker?(input2) == false
      "'#{input2}' is not a real word"
    elsif word_splitter(@input1) == word_splitter(input2)
      "anagram!"
    # elsif (compared_array.length() == split1.length) && (compared_array.length() == split2.length)
    #   "anagram!"
    # elsif (compared_array.length() == 0)
    #   "antigram!"
    else
      "not an anagram"
      # "neither an anagram nor an antigram! the two words have letters '#{compared_array.join(", ")}' in common"
    end
  end
end
