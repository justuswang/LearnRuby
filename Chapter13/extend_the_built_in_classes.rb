class Integer
  def factorial
    if self < 0
      return "You can't take the factorial of a negative number!"
    end
    if self <= 1
      1
    else
      self * (self - 1).factorial
    end
  end

  def to_roman
    thos = self/1000
    huns = self%1000/100
    tens = self%100/10
    ones = self%10
  
    rom = "M" * thos
    if huns == 9
      rom =  rom + "CM"
    elsif huns == 4
      rom =  rom + "CD"
    else
      rom = rom + "D" * (self%1000/500) + "C" * (self%500/100)
    end
  
    if tens == 9
      rom = rom + "XC"
    elsif tens == 4
      rom = rom + "XL"
    else
      rom = rom + "L" * (self%100/50) + "X" * (self%50/10)
    end
  
    if ones == 9
      rom = rom + "IX"
    elsif ones == 4
      rom = rom + "IV"
    else
      rom = rom + "V" * (self%10/5) + "I" * (self%5)
    end
  end
end

class Array
  def shuffle
    array = self
    shuffled = []
    while array.length > 0
      rand_index = rand(array.length)
      shuffled.push array[rand_index]
      tmp_array = []
      index = 0
      array.each do |obj|
        if index != rand_index
          tmp_array.push obj
        end
        index += 1
      end
      array = tmp_array
    end
    shuffled
  end
end


puts 3.factorial
puts 30.factorial

puts 3.to_roman
puts 4.to_roman
puts 6.to_roman
puts 30.to_roman

puts [1,2,3,4,5,6,7,8,9,0].shuffle
