puts "Input a starting year:"
start_year = gets.chomp.to_i

puts "Input an ending year:"
end_year = gets.chomp.to_i

puts "Following are leap years between #{start_year} and #{end_year}:"
year = start_year

while year <= end_year
  if year % 100 != 0 && year%4 == 0
    puts year
  elsif year % 400 == 0
    puts year
  end
  year = year + 1
end
