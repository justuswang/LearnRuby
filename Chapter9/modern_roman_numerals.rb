def conv_itor num
  thos = num/1000
  huns = num%1000/100
  tens = num%100/10
  ones = num%10

  rom = "M" * thos
  if huns == 9
    rom =  rom + "CM"
  elsif huns == 4
    rom =  rom + "CD"
  else
    rom = rom + "D" * (num%1000/500) + "C" * (num%500/100)
  end


  if tens == 9
    rom = rom + "XC"
  elsif tens == 4
    rom = rom + "XL"
  else
    rom = rom + "L" * (num%100/50) + "X" * (num%50/10)
  end

  if ones == 9
    rom = rom + "IX"
  elsif ones == 4
    rom = rom + "IV"
  else
    rom = rom + "V" * (num%10/5) + "I" * (ones%5)
  end
end

puts "Input a number which is >= 1 and <= 3000"
num = gets.chomp.to_i
if num < 1 || num >3000
  puts "Number out of range!"
else
  puts conv_itor num
end
