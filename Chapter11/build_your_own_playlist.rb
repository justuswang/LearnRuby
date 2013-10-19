def shuffle array
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

puts "Where is your music folder?"
music_dir = gets.chomp

music_names = shuffle(Dir["#{music_dir}/**/*.{ogg,mp3}"])

puts 'What would you like to call the playlist?'
playlist = gets.chomp + ".m3u"

File.open playlist, 'w' do |f|
  music_names.each do |name|
    f.write(name + "\n")
  end
end

puts
puts 'Done'
