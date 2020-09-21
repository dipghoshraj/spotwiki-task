#ruby code for the word extraction


gem "parallel"
require 'parallel'

file= "wordlist.txt"
word = ARGV[0]

def get_words(file, word)
    Parallel.each(File.open(file,"r").each_line) do |line|
        if line.match word
          puts "found " + word
        end
    end
end 

get_words(file, word)
