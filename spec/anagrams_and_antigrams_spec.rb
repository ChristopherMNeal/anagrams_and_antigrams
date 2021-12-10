require("rspec")
require("anagrams_and_antigrams")

describe (Text) do
  text = Text.new("cat")
  describe ("#anagram_checker") do
    it("returns 'not an anagram' if the text is not an anagram") do
      expect(text.anagram_checker("tab")).to(eq("not an anagram"))
    end
    it("returns 'anagram!' if the text is an anagram") do
      expect(text.anagram_checker("act")).to(eq("anagram!"))
    end
    it("returns 'anagram!' if the text is an anagram, despite differences in case") do
      expect(text.anagram_checker("ACT")).to(eq("anagram!"))
    end
  end
  describe ("#word_splitter") do
    it("returns an inputted word downcased, split into an array, and sorted alphabetically") do
      expect(text.word_splitter("CAT")).to(eq(["a", "c", "t"]))
    end
  end
end

# Account for the possibility that words might have different cases but should still be anagrams. For instance, "Tea" is still an anagram of "Eat".
# add .downcase()

# Add a rule to check if the inputs are words. Words can only be anagrams or anagrams if they are, in fact, actually words. (For instance, "pkmn" isn't an anagram of "kmpn" because "pkmn" isn't a real word.) A word must contain a vowel (a, i, e, o, u) or y. Otherwise it's not a word. If one of the inputs has no vowels, your method should return something like this: "You need to input actual words!" (You only need to write a rule for vowels.)
# add split(" ") before other tests, add function to spit("") and use some kind of includes method with ["a", "e", "i", "o", "u"]

# If phrases aren't anagrams, the method should check whether they are actually "antigrams." For our purposes, a word is an "antigram" of another word if no letters match. For example, "hi" has no matches with "bye". The method should return something like this if there are no letter matches: "These words have no letter matches and are antigrams."
# need some way to compare the two strings. after split.sort maybe remove any common letters?

# Account for two sentences being compared as anagrams or "antigrams." Spaces and punctuation shouldn't count (so they should be removed). You'll need to make sure that each word in both inputted sentences is really a word (passing condition # 3 above). You may want to use a regular expression to remove additional characters. For example the sentence "The Morse Code" is an anagram of "Here come dots!"
# multiple words should be accounted for with split(" ") before the other tests... add an each loop? and then add RegEx to remove spaces and punctuation like we did in the palindrome test.