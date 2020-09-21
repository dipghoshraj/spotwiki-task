#ruby code for the word extraction


gem "parallel"
require 'parallel'

file= "wordlist.txt"
word = ARGV[0]

def get_words(file, word)
    Parallel.each(File.open(file,"r").each_line) do |line|
        if lines.start_with?(word)
          puts "found " + word + " in " + lines
        end
    end
end 

get_words(file, word)
