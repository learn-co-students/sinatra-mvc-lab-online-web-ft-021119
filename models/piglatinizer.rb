class PigLatinizer

   def piglatinize(text)
      array = text.split
      latin_array = array.map do |word|
         if word.downcase.start_with?(/[aeiou]/)
            word + "way"
         else
            new_array = word.split(/([aeiou].*)/)
            word = new_array.last + new_array.first + "ay"
         end
      end
      latin_array.join(" ")
   end
end