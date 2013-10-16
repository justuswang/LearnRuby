puts 'Input some words:'
array = []
while true
  word = gets.chomp
  if word == ''
    puts 'Sorted words:'
    puts array.sort
    break
  else
    array.push(word.to_s)
  end
end
