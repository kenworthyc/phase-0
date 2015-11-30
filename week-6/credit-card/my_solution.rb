# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [Steve Jones and Caroline Kenworthy].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: a 16 digit number
# Output: a boolean
# Steps:
=begin
Method 1:
1. Convert input number to an array
2. Reverse the array
3. Iterate through odd indicies of the array, doubling each digit

Method 2:
1: Convert all elements to strings
2. Conditional: IF array[element] length is greater than 1,
THEN insert a space between each digit

string.insert(1, " ")
3. Flatten the array
4. Sum all elements

Method 3:
1: UNLESS sum % 10 is zero
THEN return false

=end
# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#   def initialize(cc_num)
#     @cc_num = cc_num
#     if cc_num.to_s.length > 16 || cc_num.to_s.length < 16
#       raise ArgumentError.new("Card number must be 16 digits")
#     else

#     end
#   end

#   def double_odds

#     @cc_string = @cc_num.to_s.reverse

#     @split_digits = @cc_string.split("")
#     odd_digits = []

#     @split_digits.select.each_with_index do |digit, index|
#       if index.odd?
#         odd_digits.push(digit)
#       end
#     end

#     odd_digits = odd_digits.map {|digit| digit.to_i}
#     @odd_digits = odd_digits.map {|digit| digit * 2}

#   end

#   def sum_digits

#     even_digits = []
#     p @cc_string

#     @split_digits.select.each_with_index do |digit, index|
#       if index.even?
#         even_digits.push(digit)
#       end
#     end

#     @odd_digits = @odd_digits.map {|digit| digit.to_s}
#     @odd_digits = @odd_digits.join.split("")
#     @concated_digits = @odd_digits.concat(even_digits)

#     @concated_digits = @concated_digits.map {|digit| digit.to_i}
#     @summed_digits = @concated_digits.inject {|sum, a| sum + a}
#   end

#   def sum_modulus_ten
#     if @summed_digits % 10 == 0
#       return true
#     else
#       return false
#     end
#   end

#   def check_card
#     double_odds
#     sum_digits
#     sum_modulus_ten
#   end

# end


# Refactored Solution

class CreditCard
  def initialize(cc_num)
    @cc_num = cc_num
    if cc_num.to_s.length > 16 || cc_num.to_s.length < 16
      raise ArgumentError.new("Card number must be 16 digits")
    end
  end

  def double_odds

    @cc_string = @cc_num.to_s

    @split_digits = @cc_string.split("")
    odd_digits = []

    @split_digits.select.each_with_index do |digit, index|
      if index.even?
        odd_digits.push(digit)
      end
    end

    @odd_digits = odd_digits.map {|digit| (digit.to_i) * 2}

  end

  def sum_digits

    even_digits = []
    p @cc_string

    @split_digits.select.each_with_index do |digit, index|
      if index.odd?
        even_digits.push(digit)
      end
    end

    @odd_digits = @odd_digits.map {|digit| digit.to_s}
    @odd_digits = @odd_digits.join.split("")
    @concated_digits = @odd_digits.concat(even_digits)

    @concated_digits = @concated_digits.map {|digit| digit.to_i}
    @summed_digits = @concated_digits.inject {|sum, a| sum + a}
  end

  def divide_sum_by_ten
    if @summed_digits % 10 == 0
      return true
    else
      return false
    end
  end

  def check_card
    double_odds
    sum_digits
    divide_sum_by_ten
  end

end

# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?
My pair and I thought pretty hard about how to alternate through the numbers, and it seemed like doing that effectively kept getting more and more complex. Same experience for splitting up all the numbers. We weren't able to pass all the specs during our session, and after going through the code more closely, splitting up all the numbers was where we had trouble.

What new methods did you find to help you when you refactored?
.each_with_index helped us avoid having to implement another iterator. I thought there would be more methods in the docs which would've helped convert elements in an array to strings, that sort of thing, but ... not really.


What concepts or learnings were you able to solidify in this challenge?
My pair was quick to work with iterators, and it was interesting to see how much you can do with them alone; yet having that many in our code did seem cluttered to me. I'd say I learned part of how I like to work with iterators— having them clearly labeled for more complex tasks, rather than as the first resort.

=end