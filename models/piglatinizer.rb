require 'pry'

class PigLatinizer
  def piglatinize(word)
    #phrase
    word.split(" ").length > 1
      array = word.split(" ")
      array.map do |word|

        #I
        if word == "I"
            array = word.split("")
            array[0..-1].join  + "way"

          #vowels
        elsif word.start_with?(/[aeouiAEIOU]/)
            array = word.split("")
            array[0..-1].join  + "way"

            #3 consonants
          elsif word.start_with?(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ][bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ][bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/)
            array = word.split("")
            array[3..-1].join + array[0..2].join + "ay"

            #2 consonants
          elsif word.start_with?(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ][bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/)
            array = word.split("")
            array[2..-1].join + array[0..1].join + "ay"

          #1 consonant
          else
            array = word.split("")
            array[1..-1].join + array[0] + "ay"
          end
      end.join(" ")
  end
end
