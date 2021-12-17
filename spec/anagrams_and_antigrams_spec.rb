require("rspec")
require("anagrams_and_antigrams")

describe (Text) do
  text = Text.new("cat")
  sentence = Text.new("Eleven plus (+) Two")
  describe ("#anagram_checker") do
    it("returns 'neither anagrams nor an antigrams' if the text is not an anagram") do
      expect(text.anagram_checker("tab", false)).to(eq("neither anagrams nor antigrams"))
      expect(text.input1).to(eq("cat"))
      expect(text.input2).to(eq("tab"))
      expect(text.letters_in_common).to(eq("a, t"))
      expect(text.number_of_letters).to(eq(2))
    end
    it("returns 'anagrams' if the text is an anagram") do
      expect(text.anagram_checker("act", false)).to(eq("anagrams"))
    end
    it("returns 'anagrams' if the text is an anagram, despite differences in case") do
      expect(text.anagram_checker("ACT", false)).to(eq("anagrams"))
    end
    it("returns 'error' when BCD is entered") do
      expect(text.anagram_checker("BCD", false)).to(eq("error"))
      expect(text.fake_words).to(eq("BCD"))
    end
    it("returns 'error' when 'CAT BCD, THNG' is entered") do
      expect(text.anagram_checker("CAT BCD THNG?!", false)).to(eq("error"))
      expect(text.fake_words).to(eq("BCD, THNG"))
    end
    it("returns 'anagrams' if the letters in a sentence are an anagram") do
      expect(sentence.anagram_checker("Twelve, plus (+) One?", false)).to(eq("anagrams"))
    end
    it("returns 'neither anagrams nor a antigrams' when the sentences have several but not all letters in common") do
      expect(sentence.anagram_checker("Two elves, plus (+) One?", false)).to(eq("neither anagrams nor antigrams"))
      expect(sentence.number_of_letters).to(eq(10))
      expect(sentence.letters_in_common).to(eq('e, l, n, o, p, s, t, u, v, w'))
    end
    it("returns 'antigrams' if the letters in the inputs are an antigram") do
      expect(text.anagram_checker("dog", false)).to(eq("antigrams"))
    end
    it("returns 'antigrams' if the letters in the inputs are an antigram, even when one word has only a 'y' as a vowel") do
      expect(text.anagram_checker("gym", false)).to(eq("antigrams"))
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