# Shortest String

# I worked on this challenge [by myself].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

# Input: Array of strings
# Output: String with fewest characters
# 1. Find length of each word
# 2. Isolate array index with shortest word
# 3. Return that word

#Your Solution Below

def shortest_string(list_of_words)
  short_word = []

  list_of_words.each do |i|
    short_word.push i
    if i.length <= short_word[0].length
      short_word.unshift i
    else
    end
  end

  return short_word.first
end