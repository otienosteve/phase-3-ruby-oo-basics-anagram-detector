class Anagram
    def initialize(word)
    @word=word
    end
    def match(words)
        @words=words
        d=@words.map {|word| word.chars.sort.join}
        zword= @word.chars.sort.join
        arr=[]
        d.each_with_index do|wrd,i|
        if wrd==zword
            arr.push(i)
        end
            
        end
        fnd=[]
        arr.each do |idx|
            fnd.push(@words[idx])
        end

        fnd
    end
    
end