# Reverse Words


# I worked on this challenge [by myself].
# This challenge took me [#] hours.

# Pseudocode
=begin
INPUT: (string) a sentence
OUTPUT: (string) each word in sentence reversed and returned in order


1. split original sentence at each space
2. iterate through each word string and reverse the characters of
3. join the array back together with a space

=end
# Initial Solution

# def reverse_words(sentence)
#   word_arr =  sentence.split

#   word_arr.map! do |word|
#     word.reverse
#   end

# p word_arr.join(' ')
# end


# Refactored Solution

def reverse_words(sentence)
  each_word =  sentence.split
  each_word.map! { |letters| letters.reverse }
  p each_word.join(' ')
end

reverse_words("Hello I am a dog")

# Reflection
=begin
I nearly overthought this one, folks. Thank god for Ruby splitting at whitespace!
I first thought I'd iterate through each character of a given string, thinking that
Ruby would split each character of a string into an array (not each word), mais non!
Split is a beautiful thing.
=end