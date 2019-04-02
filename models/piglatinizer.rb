class PigLatinizer < class App

  def piglatinize_s(string)
    string.split.map {|word| piglatinize_w(word).join}
  end

  def piglatinize_w(word)
    if %w[a,e,i,o,u].include? word[0]
      piglat = word + "ay"
    else
      first_consonants = word.split(/[aeiou].*/).join.chars
      rest_of_word = word.chars - first_consonants
      piglat = rest_of_word + first_consonants + "ay"
    end
  end

end
