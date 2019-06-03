#Ruby program to find the second freqeuntly used word in a text file.
#Ruby program to find the word frequency in a file.
#Input data file file for this program is 'dataFile.txt'
input_file='dataFile.txt'
hash1 = Hash.new
f = File.open(input_file, "r")
f.each_line { |line|
  words = line.split
  words.each { |word|
    if word.length >= 3
      if hash1.has_key?(word)
        hash1[word] = hash1[word] + 1
      else
        hash1[word] = 1
      end
    end
  }
}
puts "Word that appeared second highest number of times :"
puts hash1.invert.values[-2], " ",hash1.invert.keys[-2] 
#puts h.invert.max&.last
