class PigLatinizer
  attr_reader :phrase

  def piglatinize_word(word)
    if word.start_with?(/[aeiouAEIOU]/)
      new_word = word + "way"
    else
      letters = word.split('')
      first_letter = letters.shift
        if letters.join.start_with?(/[aeiouAEIOU]/) != true
          second_letter = letters.shift
          if letters.join.start_with?(/[aeiouAEIOU]/) != true
            third_letter = letters.shift
            letters << (first_letter + second_letter + third_letter + 'ay')
            new_word = letters.join
          else
            letters << (first_letter + second_letter + "ay")
            new_word = letters.join
          end
        else
          letters << (first_letter + "ay")
          new_word = letters.join
        end
    end
  end

  def piglatinize(phrase)
    pig_word_array = []
    word_array = phrase.split(' ')
    word_array.each do |word|
      pig_word = piglatinize_word(word)
      pig_word_array << pig_word
    end
    pig_word_array.join(' ')
  end
end
