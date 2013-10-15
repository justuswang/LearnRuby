srand
puts "What?!"
bye_count = 0
while true
  shout = gets.chomp
  if shout == 'BYE'
    bye_count = bye_count + 1
  else 
    bye_count = 0
  end
  if bye_count >= 3
    puts "BYE!"
    break
  end
  if shout != '' && shout == shout.upcase
    puts "NO, NOT SINCE #{1930 + rand(21)}!"
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end
end
