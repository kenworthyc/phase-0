# Longest String

# I worked on this challenge [by myself].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  long_word = []

  list_of_words.each do |i|
    long_word.push i
    if i.length >= long_word[0].length
      long_word.unshift i
    else
    end
  end

  return long_word.first

end