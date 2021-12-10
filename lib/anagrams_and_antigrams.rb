require("pry")

class Text
  def initialize(input1)
    @input1 = input1
  end
  def anagram_checker(input2)
    if @input1.split("").sort() == input2.split("").sort()
      "anagram!"
    else
      "not an anagram"
    end
  end
end