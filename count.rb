the_file='dataFile.txt'
h = Hash.new
f = File.open(the_file, "r")
f.each_line { |line|
  words = line.split
  words.each { |w|
    if w.length >= 3
      if h.has_key?(w)
        h[w] = h[w] + 1
      else
        h[w] = 1
      end
    end
  }
}
puts "Word that appeared second highest number of times :"
puts h.invert.values[-2], " ",h.invert.keys[-2] 
#puts h.invert.max&.last
