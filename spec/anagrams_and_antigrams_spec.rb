require("rspec")
require("anagrams_and_antigrams")

describe (Text) do
  text = Text.new("cat")
  sentence = Text.new("Eleven plus (+) Two")
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
    it("returns ''CAT BCD' is not a real word' when BCD is entered") do
      expect(text.anagram_checker("CAT BCD")).to(eq("'BCD' is not a real word"))
    end
    it("returns 'anagram!' if the letters in a sentence are an anagram") do
      expect(sentence.anagram_checker("Twelve, plus (+) One?")).to(eq("anagram!"))
    end
    it("returns 'neither an anagram nor an antigram! the two inputs have letters {letters in common} in common' if the text is not an anagram") do
      expect(sentence.anagram_checker("Twelves, plusses (+) Ones?")).to(eq("neither an anagram nor an antigram! the two inputs have letters 'e, l, n, o, p, s, t, u, v, w' in common"))
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
      expect(text.word_checker("BCD")).to(eq(["BCD"]))
    end
    it("returns an empty string if an inputted word has at least one vowel") do
      expect(text.word_checker("CAB")).to(eq([]))
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