def english_number number
  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end
  num_string = ''
  ones_place = ['one',       'two',      'three',
                'four',      'five',     'six',
                'seven',     'eight',    'nine']
  tens_place = ['ten',       'twenty',   'thirty',
                'forty',     'fifty',    'sixty',
                'seventy',   'eighty',   'ninety']
  teenagers  = ['eleven',    'twelve',   'thirteen',
                'fourteen',  'fifteen',  'sixteen',
                'seventeen', 'eighteen', 'nineteen']
  others = [['hundred',            2],
            ['thousand',           3],
            ['million',            6],
            ['billion',            9],
            ['trillion',          12]]
  left = number
  while others.length > 0
    other_pair = others.pop
    name = other_pair[0]
    base = 10 ** other_pair[1]
    write = left/base
    left = left - write*base
    if write > 0
      prefix = english_number write
      num_string = num_string + prefix + ' ' + name
      if left > 0
          num_string = num_string + ' '
      end
    end
  end
  write = left/10
  left = left - write*10
  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end
    if left > 0
      num_string = num_string + '-'
    end
  end
  write = left
  left = 0
  if write > 0
    num_string = num_string + ones_place[write-1]
  end
  num_string
end

num_now = 99

while num_now > 0
  if num_now == 1
    tmp = ''
  else
    tmp = 's'
  end

  puts "#{english_number num_now} bottle#{tmp} of beer on the wall, #{english_number num_now} bottle#{tmp} of beer!"

  num_now = num_now - 1

  if num_now == 1
    tmp = ''
  elsif num_now == 0
    puts "Take one down, pass it around, no more bottles of beer on the wall!"
    break
  else
    tmp = 's'
  end

  puts "Take one down, pass it around, #{english_number num_now} bottle#{tmp} of beer on the wall!"
end
