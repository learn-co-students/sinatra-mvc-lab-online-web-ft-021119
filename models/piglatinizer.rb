class PigLatinizer

    attr_accessor :text

    def piglatinize(text)
        words = text.split(/\s|\W/)
        words.map do |word|
            first_char = word.split("").shift
            word.push(first_char).push
            binding.pry
        end
    end

            

end
