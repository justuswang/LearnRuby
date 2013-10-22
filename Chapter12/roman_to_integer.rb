def roman_to_integer roman
  digit_mapping = {}
  digit_mapping['i'] = 1
  digit_mapping['v'] = 5
  digit_mapping['x'] = 10
  digit_mapping['l'] = 50
  digit_mapping['c'] = 100 
  digit_mapping['d'] = 500
  digit_mapping['m'] = 1000

  previous_num = 0
  integer = 0
  index = roman.length - 1
  while index >= 0
    r = roman[index].downcase
    num = digit_mapping[r]
    if !num
      puts "Not a valid roman numeral!"
      exit
    end
    if previous_num > num
        num = num * -1
    else
        previous_num = num
    end

    integer = integer + num 
    index -= 1
  end
  integer
end

puts "Input a roman numeral:"
roman_num = gets.chomp
print "Digit of #{roman_num} is: "
int_num = roman_to_integer roman_num
print "#{int_num}\n"
