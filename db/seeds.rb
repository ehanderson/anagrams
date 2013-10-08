require_relative '../config/environment'
require_relative '../config/database'


File.open('words.txt', 'r').each_line do |line|
  Word.create(
    name: line.strip.downcase ,
    sorted_letters: line.strip.downcase.split(//).sort.join
    )
end
