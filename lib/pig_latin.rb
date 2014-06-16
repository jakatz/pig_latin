require "pig_latin/version"
require_relative 'pig_latin.rb'

module PigLatin
  def self.latinize(string)
    case string.downcase
    when /\A[y]/
      string[1..-1] + "yay"
    when /\A[^aeiouyq]/
      consonants = string.slice(/\A[^aeiouy]+/)
      string[consonants.length..-1] + consonants + "ay"
    when /\A[aeiou]/
      string + "way"
    when /\A[q]/
      string[2..-1] + string[0..1] + "ay"
    end
  end
end

