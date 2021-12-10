require("pry")

class Text
  def initialize(input1)
    @input1 = input1
  end
  def word_splitter(input)
    input.downcase().split('').sort() 
  end
  def anagram_checker(input2)
    if word_splitter(@input1) == word_splitter(input2)
      "anagram!"
    else
      "not an anagram"
    end
  end
end