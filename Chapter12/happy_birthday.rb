puts "What year were you burn in?"
year = gets.chomp
puts "What month were you burn in?"
month = gets.chomp
puts "What day of the month were you burn in?"
day = gets.chomp

current_time = Time.new

age = 1
while Time.gm(year.to_i + age, month, day) <= current_time
  puts "SPANK!"
  age += 1
end
