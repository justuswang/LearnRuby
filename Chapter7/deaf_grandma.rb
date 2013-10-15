srand
puts "What?!"
while true
  shout = gets.chomp
  if shout == 'BYE'
    puts 'BYE!'
    break
  end
  if shout != '' && shout == shout.upcase
    puts "NO, NOT SINCE #{1930 + rand(21)}!"
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end
end
