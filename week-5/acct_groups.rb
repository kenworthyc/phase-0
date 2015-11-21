# 0. Pseudocode
#
# Input: list of names
# Output: list of separate lists of 4 or 5 names
# STEPS
#
# 1. Set up empty container for groups of 4/5 names
# 2. Get number of names from input list
# 3. IF number of names > 5, proceed. (ELSE return names to empty container)
# 4. Divide names into groups of 4 or 5 (or 3 if necessary.)
# => a. IF number of names/5 has a remainder of 0 or 4 or 3
# => =>  i. get 5 names, append to empty container
# => => ii. get remainder names, append to container
# => b. ELSIF number of names/4 has a remainder of 0 or 3
# => =>  i. get 4 names, append to empty container
# => => ii. get remainder names, append to container
# => c. ELSIF number of names/4 and/or number of names/5 has a remainder of 2 or 1
# => =>  i. UNTIL number of names/5 or 4 has a remainder of 0
# => => ii. get 5 names, append to empty container
# => =>iii. get 4 names, append to container
# => => iv. get remainder names, append to container
# 5. return list of groups to empty container

# 1. Initial Solution

# def split_up(list)
#   group_list = []
#   arr = list
#   list_count = arr.length

#   if list_count > 5
#     if list_count % 5 == 0 || list_count % 5 == 4 #|| list_count % 5 == 3
#       (list_count / 5 + 1).times do
#       group_list << arr.slice!(0, 5)
#       end
#     elsif
#       list_count % 4 == 0 || list_count % 4 == 3
#       (list_count / 4 + 1).times do
#       group_list << arr.slice!(0, 4)
#       end

#     elsif
#       list_count % 5 || list_count % 4 == 2 || 1
#        if list_count < 15 # && list_count % 3 == 0
#           (list_count / 3).times do
#             group_list << arr.slice!(0, 3)
#           end
#        else

#           begin
#             group_list << arr.slice!(0, 5)
#             group_list << arr.slice!(0, 4)
#           end until list_count % 5 || list_count % 4 == 0 || 3
#             group_list << arr.slice!(0, 4)
#           end
#     end

#   else
#     group_list << list[0, arr.length - 1]
#   end
#   p group_list
#   p list
# end

# students = %w{CDK HFD DKL ASA VBM VBM HYC CDK HFD DKL ASA VBM VBM HYC CDK HFD DKL ASA VBM VBM}
# puts students.length

# p split_up(students)

# 2. Refactored Solution

def split_up(list)
  group_list = []
  list_count = list.length

  if list_count > 5

    if list_count % 5 == 0 || list_count % 5 == 4
      list.each_slice(5) {|slice| group_list << slice}

    elsif list_count % 4 == 0 || list_count % 4 == 3
      list.each_slice(4) {|slice| group_list << slice}

    elsif list_count % 5 || list_count % 4 == 2 || 1

         begin
            group_list << list.slice!(0, 5)
            group_list << list.slice!(0, 4)
          end until list_count % 5 || list_count % 4 == 0 || 3
            group_list << list.slice!(0, 4)
         end

  else
    group_list << list[0, list.length - 1]
  end
  group_list

end

students = %w{CDK SHG ASA HFD DKL SHG ASA HFD DKL SHG ASA HFD VBM VBM HYC CDK HFD DKL ASA VBM VBM HYC CDK HFD DKL ASA VBM VBM}

p split_up(students)


# What was the most interesting and most difficult part of this challenge?
#
# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# Yeah, I do. The mathematical complexity of this task, which I know is not enormous, was daunting until I slowed down to think through what list counts I'd need to account for. I'm still disappointed by the brute-force counting I did.
# Was your approach for automating this task a good solution? What could have made it even better?
# Not particularly. I don't think my mathematical logic was strong at all; there's got to be a simpler way to determine these groups through common denominators.
# What data structure did you decide to store the accountability groups in and why?
# I decided that for a MVP, it would be an array of the accountability groups. I'd like to iterate over it so it returns a hash with "group #" => [array of names] pairs, and if I have time at the end of the week I will.
# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# I learned that I should've read Well-Grounded Rubyist ch. 10 at the beginning of the week, for one. Many methods in that chapter would've simplified the steps in my pseudocode, but .slice_each followed my thought process the most closely.