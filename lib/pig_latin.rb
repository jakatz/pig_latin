require "pig_latin/version"
require_relative 'pig_latin.rb'

module PigLatin
vowels = %{a e i o u}
consonants = %w{b c d f g h j k l m n p q r s t v w x y z}


  def self.latinize(string)
    if string[0] =~ /\A[yY]/
      string = string[1..-1] + string[0] + "ay"
    elsif string =~ /[yY]/ && string !=~ /\A[yY]/
      string = string.slice(/[yY].+/) + string.slice(/[^y]*/) + "ay"
    end
    return string
  end
end

