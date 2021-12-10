require("rspec")
require("anagrams_and_antigrams")

describe (Text) do
  text = Text.new("cat")
  describe ("#anagram_checker") do
    it("returns 'neither an anagram nor an antigram! the two inputs have letters {letters in common} in common' if the text is not an anagram") do
      expect(text.anagram_checker("tab")).to(eq("neither an anagram nor an antigram! the two inputs have letters 'a, t' in common"))
    end
    it("returns 'anagram!' if the text is an anagram") do
      expect(text.anagram_checker("act")).to(eq("anagram!"))
    end
    it("returns 'anagram!' if the text is an anagram, despite differences in case") do
      expect(text.anagram_checker("ACT")).to(eq("anagram!"))
    end
    it("returns ''BCD' is not a real word' when BCD is entered") do
      expect(text.anagram_checker("BCD")).to(eq("'BCD' is not a real word"))
    end
  end

  describe ("#word_splitter") do
    text = Text.new("cat")
    it("returns an inputted word downcased, split into an array, and sorted alphabetically") do
      expect(text.word_splitter("CAT")).to(eq(["a", "c", "t"]))
    end
  end

  describe ("#word_checker?") do
    it("returns false if an inputted word has no vowel") do
      expect(text.word_checker?("BCD")).to(eq(false))
    end
    it("returns true if an inputted word has at least one vowel") do
      expect(text.word_checker?("CAB")).to(eq(true))
    end
  end

  describe("#array_intersection") do
    it("returns an empty array if the inputs have no letters in common") do
      expect(text.array_intersection(["a", "c", "t"], ["d", "g", "o"])).to(eq([]))
    end
    it("returns an array with the common elements of the two entered arrays") do
      expect(text.array_intersection(["a", "c", "t"], ["a", "b", "t"])).to(eq(["a", "t"]))
    end
  end
end

# If phrases aren't anagrams, the method should check whether they are actually "antigrams." For our purposes, a word is an "antigram" of another word if no letters match. For example, "hi" has no matches with "bye". The method should return something like this if there are no letter matches: "These words have no letter matches and are antigrams."
# need some way to compare the two strings. after split.sort maybe remove any common letters?
# refactor to combine arrays and reject common letters then take length? would that work with words with two common letters? maybe not
# need a function that will return the letters in common
# [a, c, t] and [a, c, t, s] would return [a, c, t]

# Account for two sentences being compared as anagrams or "antigrams." Spaces and punctuation shouldn't count (so they should be removed). You'll need to make sure that each word in both inputted sentences is really a word (passing condition # 3 above). You may want to use a regular expression to remove additional characters. For example the sentence "The Morse Code" is an anagram of "Here come dots!"
# multiple words should be accounted for with split(" ") before the other tests... add an each loop? and then add RegEx to remove spaces and punctuation like we did in the palindrome test.