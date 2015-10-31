module FunWithWordsStrings
    def palindrome?
        # your code here
        arr = self.gsub(/\W/im,'')
        str = arr.downcase
        if str.reverse == str
            return true
        else
            return false
        end
    end
    def count_words
        # your code here
        res = Hash.new(0)
        str = self.gsub(/\W/im,' ')
        str = str.downcase
        words_list = str.split()
        words_list.each do |value|
            res[value] += 1
        end
        return res
    end
    def anagram_groups
        # your code here
        res = Array.new()
        dict = Hash.new()
        strings = self.gsub(/\W/im,' ').split
        strings.each do |val|
            curr = val.downcase.chars.sort.join
            if dict[curr] 
                index = dict[curr]
                res[index] << val
            else
                tmp = Array.new() << val
                res << tmp
                dict[curr] = res.size - 1
            end
        end
        return res
    end
end

# make all the above functions available as instance methods on Strings:

class String
    include  FunWithWordsStrings
end
