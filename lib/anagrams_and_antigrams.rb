require("pry")

class Text
  def initialize(input1)
    @input1 = input1
  end
  def anagram_checker(input2)
    if @input1.downcase().split("").sort() == input2.downcase().split("").sort()
      "anagram!"
    else
      "not an anagram"
    end
  end
end