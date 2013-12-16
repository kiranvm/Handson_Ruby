lines=File.readlines(ARGV[0])

line_count = lines.size

text=lines.join

total_characters = text.length

total_characters_nospaces=text.gsub(/\s+/,'').length

word_count = text.scan(/\w+/).length

#word_count = text.split.length

sentence_count = text.split(/ \.|\?|!/).length

paragraph_count = text.split(/\n\n/).length

stopwords = %w{the a by on for of are with just but and to the my I in}

words = text.scan(/\w+/)

keywords = words.select { |word| !stopwords.include?(word)}

percentage = ((keywords.length.to_f / words.length.to_f) * 100).to_i

puts "Interesting words percentage-->"
puts percentage
#puts keywords

#puts "Content of the file -->"
#puts "#{text}"

puts "#{total_characters_nospaces} characters avoiding white spaces"

puts "#{total_characters} characters"

puts "#{word_count} words"

puts "#{sentence_count} sentences"

puts "#{line_count} lines"

puts "#{paragraph_count} paragraphs"


