class PigLatinizer

  def initialize
  end

  def piglatinize(input)
    if input.split.count == 1
      piglatinize_w(input)
    else
      piglatinize_s(input)
    end
  end

  def piglatinize_s(string)
    string.split.map {|word| piglatinize_w(word)}.join(" ")
  end

  def piglatinize_w(word)
    if ["a","e","i","o","u"].include? word[0].downcase
      word + "way"
    else
      first_consonants = word.split(/[aeiou].*/).join.chars
      i = first_consonants.count
      rest_of_word = word[i..-1]
      rest_of_word + first_consonants.join + "ay"
    end
  end

end
