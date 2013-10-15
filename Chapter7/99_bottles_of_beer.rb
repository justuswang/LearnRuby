num_now = 99

while num_now > 0
  if num_now == 1
    tmp = ''
  else
    tmp = 's'
  end

  puts "#{num_now} bottle#{tmp} of beer on the wall, #{num_now} bottle#{tmp} of beer!"

  num_now = num_now - 1

  if num_now == 1
    tmp = ''
  elsif num_now == 0
    puts "Take one down, pass it around, no more bottles of beer on the wall!"
    break
  else
    tmp = 's'
  end

  puts "Take one down, pass it around, #{num_now} bottle#{tmp} of beer on the wall!"
end
