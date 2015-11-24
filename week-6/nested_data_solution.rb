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