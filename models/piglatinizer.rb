# require 'pry'

# class PigLatinizer

#   def piglatinize(word)
#     alphabet = ("A".."z").to_a
#     vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
#     consonants = alphabet - vowels
#     unusable = ["i", "a", "an", "in", "on", "and"]
#     word.gsub!(/[^a-z0-9\s]/i, '')
#     word = word.split("")
#     # ["k", "i", "t", "t", "e", "n"]

#     if unusable.include?(word.join) || word.size <= 1
#       word.join
#     elsif vowels.include?(word[0]) && word.size > 1
#       word.join + "ay"
#     elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
#       word = word.rotate.rotate.rotate << "ay"
#       word.join
#     elsif consonants.include?(word[0] && word[1])
#       word.rotate.rotate.join + "ay"
#     else
#       word.rotate.join + "ay"
#     end

# end

#   def to_pig_latin(words)
#     result = words.split(" ").map do |word|
#       piglatinize(word)
#     end
#     result.join(" ")
#   end


# end

class PigLatinizer
    attr_reader :text



    def initialize

    end
    
def piglatinize(text)
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    words = text.split
    words.map do |word|
      if vowels.include?(word[0])
        word + "way"
      else
        i = 0
        consonants = ""
        until vowels.include?(word[i])
          consonants += word[i]
          i += 1
        end
        word.slice(i..-1) + consonants + "ay"
      end
    end.join(" ")
  end

end