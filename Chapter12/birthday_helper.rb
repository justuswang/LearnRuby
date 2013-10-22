file = File.read "birthday_helper.csv"
birthday_list = {}
file.each_line do |line|
  line = line.chomp
  index_of_first_comma = 0
  while index_of_first_comma < line.length
    if line[index_of_first_comma] == ','
      break
    end
    index_of_first_comma += 1
  end

  name = line[0..index_of_first_comma - 1]
  birthday = line[-12..-1]
  birthday_list[name] = birthday
end

puts "Whose birthday would you like to know?"
name = gets.chomp
birthday = birthday_list[name]
if birthday.nil?
  puts "Name not found!" 
else
  puts "#{name}'s #{Time.now.year - birthday[-4..-1].to_i} year old birthday is #{birthday[0..5]}, #{Time.now.year}"
end
