# I worked on this challenge [with Kerry Choy, then myself].


# Your Solution Below

def valid_triangle?(a, b, c)

if a == 0 || b == 0
  return false
elsif b == 0 || c == 0
  return false
else
  return true
end

if (a == b && a + b > c)
  return true
elsif (b == c && b + c > a)
  return true
elsif (a == c && a + c > b)
  return true
else
  return false
end

if a == b && b == c
  return true
else
  return false
end

if a**2 + b**2 == c**2
  return true
else
  return false
end

end