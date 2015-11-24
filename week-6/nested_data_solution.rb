# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2],
       ["inner",
         ["eagle",  "par",
              ["FORE", "hook"]
            ]
       ]
     ]

# attempts:
# ============================================================

# # p array[1][2][0]
# p array[1]
# p array[1][1][2]
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

# 1. iterate over each element in number_array
# 2. determine if num is an Integer
# IF an Integer, add 5 to num
# ELSE iterate through the remaining arrays and add 5 to all elements

number_array.map! do |num|
  if num.is_a?(Array)
    num.map! {|x| x + 5 }
  else
    num + 5
  end
end

p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |element|
  if element.is_a?(Array)
    element.map! do |sub_elem|
      if sub_elem.is_a?(Array)
        sub_elem.map!{|name| name + ".ly"}
      else
        sub_elem + ".ly"
      end
    end
  else
    element + ".ly"
  end
end

p startup_names

=begin

What are some general rules you can apply to nested arrays?
1. If you want to access one element at the deepest level of an array, you need
*as many index-indicators as there are nested arrays*. On Hole 1, there are four total arrays; to return an element from the deepest array, we needed: array[1][1][2][0].
2. When iterating through nested arrays, applying a class-specific method to an array will result in a Type error; you have to correctly apply iterators within the first iterator (checking for types with is_a? Array or kind_of? Array).

What are some ways you can iterate over nested arrays?
Iterating over nested arrays is easy enough to do with an Enumerator; the code
  just starts to look a little dizzy and repetitive, since in order to access
  a sub-array you need to set an if-else condition: if the iterated var is
  an array, set another iterator within the first.
Since they are simply Enumerators, you can use any number of preset methods
to iterate: .each, .map, .count, etc...

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
We didn't find any new options that would do the rather messy work of iterating
 within iterators to access sub-arrays, so in lieu of that, we had to stick
 with .each. We considered using .flatten to simplify the nested iterators,
 but that would destroy the array structure, which (since this is a nested array
 exercise) seemed important.

=end