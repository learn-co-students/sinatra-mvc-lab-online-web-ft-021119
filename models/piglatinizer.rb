class PigLatinizer
  attr_reader :user_phrase

  def piglatinize(phrase)
    words = phrase.split(" ")
    @pl_word = words.collect do |word|
      letters = word.chars #array of letters in single word
      if letters.length < 5 && letters[0] =~ /[aeiouAEIOU]/
        letters << "way"
      elsif letters[0] =~ /[iIeE]/
        letters << "way"
      elsif letters[0] =~ /[aeou]/
        letters << "way"
      elsif letters[1] =~ /[aeiouy]/
        first_letter = letters.shift
        letters << first_letter
        letters << "ay"
      elsif letters[2] =~ /[aeiouy]/
        first_letters = letters.shift(2)
        letters << first_letters
        letters << "ay"
      elsif letters[3] =~ /[aeiouy]/
        first_letters = letters.shift(3)
        letters << first_letters
        letters << "ay"
      end
      letters.join("")
    end
    @pl_word.join(" ")
  end
end
