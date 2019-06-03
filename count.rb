the_file='dataFile.txt'
h = Hash.new
f = File.open(the_file, "r")
f.each_line { |line|
  words = line.split
  words.each { |w|
    if h.has_key?(w)
      h[w] = h[w] + 1
    else
      h[w] = 1
    end
  }
}

puts "Word that appeared second hsighest number of tumes"
puts h.invert.values[2]
#puts h.invert.max&.last
