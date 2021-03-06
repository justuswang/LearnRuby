Dir.chdir '/Users/test/LearnRuby/Chapter11/photo'
pic_names = Dir['/Users/test/LearnRuby/Chapter11/photo_source/**/*.{JPG,jpg}']

puts 'What would you like to call this?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files:"

pic_number = 1
pic_names.each do |name|
  print '.'

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end
  if File.exist? new_name
    puts
    puts "Error! File #{new_name} exists."
    puts "Press [Enter] to exit."
    gets
    exit
  end
  File.rename name, new_name
  pic_number = pic_number + 1
end

puts
puts 'Done'
