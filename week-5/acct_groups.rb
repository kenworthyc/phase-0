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