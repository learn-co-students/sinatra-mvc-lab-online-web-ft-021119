class PigLatinizer

    attr_accessor :text

    def piglatinize(text)
        vowels = ['a', 'e', 'i', 'o', 'u']
        words = text.split(' ')
        result = []
    
    words.each_with_index do |word, i|
        translation = ''
        qu = false
        if vowels.include? word[0] && word.length > 1
            result << word + 'way'
            
        elsif word.length == 1
            result << word + 'way'
        elsif word.length > 1 && !vowels.include?(word[0])
            move = word.split("").shift
            word = word.split("").delete(move)
            word = word.push(move)
            result << word + 'ay' 
    
        else
            word = word.split('')
            count = 0
            word.each_with_index do |char, index|
                if vowels.include? char
                    # handle words that start with 'qu'
                    if char == 'u' and translation[-1] == 'q'
                        qu = true
                        translation = words[i][count + 1..words[i].length] + translation + 'uay'
                        result.push(translation)
                        next
                    end
                    break
                else
                    # handle words with 'qu' in middle
                    if char == 'q' and word[i+1] == 'u'
                        qu = true
                        translation = words[i][count + 2..words[i].length] + 'quay'
                        result.push(translation)
                        next
                    else
                        translation += char
                    end
                    count += 1
                end
            end
            
        end
    
    end
    result.join(' ')
    end

            

end
