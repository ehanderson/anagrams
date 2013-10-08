

class Word < ActiveRecord::Base
  # Remember to create a migration
  def anagrams
    matches_array = []
    plugin = self.sorted_letters
    matches_array = Word.where(sorted_letters: plugin)
    matches_array

    # if matches_array.length < 2
    #   puts "No anagram, sorry"
    # else
      matches_array
    # end
  end
 

end

# Solution for Challenge: Anagrams 2: Generating Anagrams. Started 2013-09-18T20:31:07+00:00
 



 
 
 
 
 
 
 
 
 
