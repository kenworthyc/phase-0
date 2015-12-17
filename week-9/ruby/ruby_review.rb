# Cipher Challenge

# I worked on this challenge [by myself]
# I spent [1.5] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
#   decoded_sentence = []
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c",
#             "h" => "d",   # Structurally, Hashes are a sound choice for a cipher,
#             "i" => "e",   # since each character has one fixed partner value.
#             "j" => "f",   # However, because this is a pretty simple cipher, operating on one
#             "k" => "g",   # array of the alphabet using indexes would be a simpler process.
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   input.each do |x| # What is #each doing here? --iterating through each character in the coded input.
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? --The found_match variable is set to true if the decoder finds a match, to signal the loop to break and restart with the next letter.
#     cipher.each_key do |y| # What is #each_key doing here? -- going through each key of the cipher
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really? -- y is the key of the cipher hash from the each_key iterator, x is the coded character from the first each loop.
#         decoded_sentence << cipher[y]
#         found_match = true
#         break  # Why is it breaking here? -- to translate the next letter
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
#         decoded_sentence <<         # It creates an array of the members of the range
#         found_match = true
#         break
#       end
#     end
#     if not found_match  # What is this looking for? --numbers and punctuation NOT in the 'space' list
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
#   #What is this method returning? --the decoded sentence as a string, not an array
# end

# Your Refactored Solution

# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("")
#   decoded_sentence = []

#   cipher_alphabet = ('a'..'z').to_a.rotate(4)
#   cipher_space = ["@", "#", "$", "%", "^", "&", "*"]

#   input.each do |coded_char|
#     found_match = false

#       cipher_alphabet.each_with_index do |cipher_char, index|

#         break if found_match

#           if coded_char == cipher_char
#             decoded_sentence << cipher_alphabet[index - 4]
#             found_match = true
#           elsif cipher_space.include?(coded_char)
#             decoded_sentence << " "
#             found_match = true
#           end
#       end

#     decoded_sentence << coded_char unless found_match
#   end

#   return decoded_sentence.join('')

# end

# Object-Oriented Solution
  def split_coded_msg(coded_msg)
    coded_msg = coded_msg.downcase.split('')
  end

  def cipher_shift(shift_num)
    cipher_alphabet = ('a'..'z').to_a.rotate(shift_num)
    return cipher_alphabet
  end

  def letter_convertor(coded_msg, cipher_alphabet)
    decoded_msg = []
    coded_msg.each do |coded_ltr|
      cipher_alphabet.each_with_index do |cipher_ltr, index|
        if coded_ltr == cipher_ltr
          decoded_msg << cipher_alphabet[index - 4]
        elsif cipher_alphabet.include?(coded_ltr) == false
          decoded_msg << coded_ltr
          break
        end
      end
    end

    return decoded_msg
  end

  def punctuation_convertor(decoded_msg)

    cipher_space = ['@', '#', '$', '%', '^', '&', '*']

    decoded_msg.collect! { |ltr|
        (cipher_space.include?(ltr)) ? " " : ltr
      }

  end

  def print_decoded_sentence(decoded_msg)
    return decoded_msg.join('')
  end

def dr_evils_cipher(coded_msg)

  cipher = cipher_shift(4)

  split_msg = split_coded_msg(coded_msg)

  letters = letter_convertor(split_msg, cipher)

  punctuated = punctuation_convertor(letters)

  return print_decoded_sentence(punctuated)

end



p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l") == "our early attempts at a tractor beam went through several preparations. preparations a through g were a complete failure.\n but now, ladies and gentlemen, we finally have a working tractor beam, which we shall call preparation h"
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.") == "you see, i've turned the moon into what i like to call a death star."
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.") == "mini me, if i ever lost you i don't know what i would do.\n i'd probably move on and get another clone but there would be a 15 minute period there where i would just be inconsolable."
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?") == "why make a trillion when we could make... billions?"

#######################################
#FIBONACCI

# I worked on this challenge [by myself].
# This challenge took me [#] hours.

# Pseudocode
=begin
INPUT: integer
OUTPUT: boolean (is integer in the fibonacci series)

1. access method to find square root of an integer
2. create perfect_square? method to check
    IF square root of number is an integer
3. use equation: int is fibonacci number
    IF perfect_square?(5*x^2 + 4) == TRUE
    ELSIF perfect_square?(5*x^2 - 4) == TRUE
    THEN integer x is in the fibonacci series
=end

# Initial Solution

# def sqrt(i)
#   a, b = 0, i
#   while a + 1 < b
#     m = (a + b) / 2
#     if m**2 > i
#       b = m
#     else
#       a = m
#     end
#   end
#   a
# end

#   def perfect_square?(x)
#     return true if Math.sqrt(x) == Math.sqrt(x).floor
#   end

# def is_fibonacci?(num)

#   equ1 = (5*(num**2) + 4)
#   equ2 = (5*(num**2) - 4)


#   if perfect_square?(equ1 || equ2) == true
#     return true
#   else
#     return false
#   end

# end


# Refactored Solution

# produces square root of i manually. ( because Math.sqrt does not handle
# large non-Fibonacci numbers accurately— rounds them off
# after a certain amount of digits (using exponential notation))

def sqrt(i)
  a = 0
  b = i
# as long as i > 1, m is (half of the sum of 1 & i, rounded down)

  while a + 1 < b
    m = (a + b) / 2

#if m, multiplied by itself, is greater than i, m = i.
#if a + 1 is less than m, repeat calculation for m above.
    if m**2 > i
      b = m
    else
      a = m
    end
#when a is equal to b, return b
  end
  a
end

# tests if i is a perfect square--
# works with '?' function— returns false unless
# sqrt(i) does NOT return a truncated float
# (thus i does not exactly equal sqrt(i)**2)

def perfect_square?(i)
  sqrt(i)**2 == i
end

# tests if num is in the fibonacci sequence, using a factored version of Binet's formula.
# https://en.wikipedia.org/wiki/Fibonacci_number#Recognizing_Fibonacci_numbers

def is_fibonacci?(num)

  equ1 = (5*(num**2) + 4)
  equ2 = equ1 - 8

  perfect_square?(equ1) || perfect_square?(equ2)

end

# Reflection
# Took a WHILE to understand how a manual square root equation works.
# Useful lessons learned in Ruby's distinction between Fixnum and Bignum,
# they do NOT always behave the same.

=begin

What concepts did you review or learn in this challenge?
In the Fibonacci challenge, I reviewsed the different ways Ruby will
treat different object types, and the limitations
that spring from that.
The object-oriented release of Dr. Evil's Cipher was rewarding and fun to
review, as I was able to successfully create and link together the necessary
functions. Doing things two ways in Ruby is really an awesome way to
double check all your logic.

What is still confusing to you about Ruby?
I just got that .each is functioning as a counter does in Javascript.
I do want to understand better how it's implemented in Ruby— if .each is
a counter that goes through one index per iterated item in an array or hash,
for instance, or is it fundamentally different?

What are you going to study to get more prepared for Phase 1?
I'm planning on going through more of the Ruby Reviews module, and reviewing the
book. I never completed the Codecademy Ruby course as well, so I'll work on that.

=end

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
I first thought to iterate through each character of a given string, thinking that
Ruby would split each character of a string before each word, mais non! Split is
a beautiful thing.
=end