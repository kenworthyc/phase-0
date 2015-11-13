# Calculate a Grade

# I worked on this challenge [by myself, with: Kerry Choy].

# Your Solution Below

def get_grade(percent)

  if 90 >= percent >= 100
    puts "A"
  elsif 80 >= percent > 90
    puts "B"
  elsif 70 >= percent > 80
    puts "C"
  elsif 60 >= percent > 70
    puts "D"
  else
    puts "F"
  end

end