require 'spec_helper'

describe PigLatin do
  context "First letter is a consonant, but not Q" do
    it "the first letter is moved to the end of the word, and 'ay' is added" do
      p = PigLatin.latinize("fun")
      expect(p).to eq("unfay")
    end

    it "moves whole consonant clusters, if the first several letters are all consonants" do
      p = PigLatin.latinize("glove")
      expect(p).to eq("oveglay")

      p2 = PigtLatin.latinize("three")
      expect(p).to eq("eethray")
    end
  end

  context "First letter is a vowel or silent letter" do
    it "adds way to the end of the word" do
      p = PigLatin.latinize("egg")
      expect(p).to eq("eggway")
    end
  end

  context "First letter is a 'y'" do
    it "treats 'y' like a consonant if it is the first letter of the word" do
      p = PigLatin.latinize("yellow")
      expect(p).to eq("ellowyay")
    end

    it "treats 'y' like a vowel if it is not the first letter of the word" do
      p2 = PigLatin.latinize("rhythm")
      expect(p2).to eq("ythmrhay")
    end
  end

  context "First letter is a 'q'" do
    it "carries the following 'u' along with the 'q' to the end of the word, followed by an -ay" do
      p = PigLatin.latinize("quiver")
      expect(p).to eq("iverquay")
    end
  end
end
