require("rspec")
require("anagrams_and_antigrams")

describe (Text) do
  text = Text.new("cat")
  sentence = Text.new("Eleven plus (+) Two")
  describe ("#anagram_checker") do
    it("returns '{input1} and {input2} are neither an anagram nor an antigrams! the two inputs have letters {letters in common} in common' if the text is not an anagram") do
      expect(text.anagram_checker("tab", false)).to(eq("'cat' and 'tab' are neither anagrams nor a antigrams! they have 2 letters in common: 'a, t'"))
    end
    it("returns '{input1} and {input2} are anagrams!' if the text is an anagram") do
      expect(text.anagram_checker("act", false)).to(eq("'cat' and 'act' are anagrams!"))
    end
    it("returns '{input1} and {input2} are anagrams!' if the text is an anagram, despite differences in case") do
      expect(text.anagram_checker("ACT", false)).to(eq("'cat' and 'ACT' are anagrams!"))
    end
    it("returns ''BCD' is not a real word' when BCD is entered") do
      expect(text.anagram_checker("BCD", false)).to(eq("error! the following aren't real words: 'BCD'"))
    end
    it("returns ''CAT BCD' is not a real word' when BCD is entered") do
      expect(text.anagram_checker("CAT BCD THNG?!", false)).to(eq("error! the following aren't real words: 'BCD, THNG'"))
    end
    it("returns '{input1} and {input2} are anagrams!' if the letters in a sentence are an anagram") do
      expect(sentence.anagram_checker("Twelve, plus (+) One?", false)).to(eq("'Eleven plus (+) Two' and 'Twelve, plus (+) One?' are anagrams!"))
    end
    it("returns '{input1} and {input2} are neither anagrams nor a antigrams! they have {number of letters} letters in common: '{letters in common}'") do
      expect(sentence.anagram_checker("Two elves, plus (+) One?", false)).to(eq("'Eleven plus (+) Two' and 'Two elves, plus (+) One?' are neither anagrams nor a antigrams! they have 10 letters in common: 'e, l, n, o, p, s, t, u, v, w'"))
    end
    it("returns '{input1} and {input2} are antigrams!' if the letters in the inputs are an antigram") do
      expect(text.anagram_checker("dog", false)).to(eq("'cat' and 'dog' are antigrams!"))
    end
    it("returns '{input1} and {input2} are antigrams!' if the letters in the inputs are an antigram, even when one word has only a 'y' as a vowel") do
      expect(text.anagram_checker("gym", false)).to(eq("'cat' and 'gym' are antigrams!"))
    end
  end

  describe ("#word_splitter") do
    text = Text.new("cat")
    it("returns an inputted word downcased, split into an array, and sorted alphabetically") do
      expect(text.word_splitter("CAT")).to(eq(["a", "c", "t"]))
    end
    it("returns an inputted sentence downcased, with puncuation and spaces removed, split into an array, and sorted alphabetically") do
      expect(text.word_splitter("CA T!")).to(eq(["a", "c", "t"]))
    end
  end

  describe ("#word_checker") do
    it("returns the incorrect word if an inputted word has no vowel") do
      expect(text.word_checker("BCD", false)).to(eq(["BCD"]))
    end
    it("returns an empty string if an inputted word has at least one vowel") do
      expect(text.word_checker("CAB", false)).to(eq([]))
    end
  end

  describe("#array_intersection") do
    it("returns an empty array if the inputs have no letters in common") do
      expect(text.array_intersection(["a", "c", "t"], ["d", "g", "o"])).to(eq([]))
    end
    it("returns an array with the common elements of the two entered arrays") do
      expect(text.array_intersection(["a", "c", "t"], ["a", "b", "t"])).to(eq(["a", "t"]))
    end
    it("returns an array with the common elements of the two entered arrays") do
      expect(text.array_intersection(["a", "c", "t", "t"], ["a", "b", "t"])).to(eq(["a", "t"]))
    end
  end
end