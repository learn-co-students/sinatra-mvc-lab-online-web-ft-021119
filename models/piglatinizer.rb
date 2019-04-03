class PigLatinizer

  def piglatinize(word)
    #does word start with a consonant?
    #how many consonants at beginning of word?
    if vowel?(word[0])
      word = word + "w"
    elsif !vowel?(word[0]) && !vowel?(word[1]) && !vowel?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
    elsif !vowel?(word[0]) && !vowel?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
    else
      word = word.slice(1..-1) + word.slice(0)
    end
    word << "ay"
 end

 def vowel?(word)
   word[0].match(/[aAeEoOuUiI]/)
 end

 def to_piglatin(sentence)
   binding.pry
   sentence.split.map {|word| piglatinize(word)}.join(' ')
 end
end
