def conv_itor num
  "M" * (num/1000) + "D" * (num%1000/500) + "C" * (num%500/100) + "L" * (num%100/50) + "X" * (num%50/10) + "V" * (num%10/5) + "I" * (num%5)
end

puts "Input a number which is >= 1 and <= 3000"
num = gets.chomp.to_i
if num < 1 || num >3000
  puts "Number out of range!"
else
  puts conv_itor num
end
