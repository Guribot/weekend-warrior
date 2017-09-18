def leap_year?(year)
  if (year % 400).zero?
    true
  elsif (year % 100).zero?
    false
  elsif (year % 4).zero?
    true
  else
    false
  end
end
