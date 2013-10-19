def music_shuffle array
  sorted_array = array.sort
  shuffled = []

  half_len  = array.length/2
  flag = array.length%2

  if flag == 1
    shuffled.push sorted_array[array.length - 1]
  end
  index = 0
  while index < half_len
    shuffled.push sorted_array[index]
    shuffled.push sorted_array[half_len + index]
    index += 1
  end

  shuffled
end


music_names = [
["music/Jazz/Monk--Nutty/track08.ogg"],
["music/Jazz/Monk--London_Collection_1/track05.ogg"],
["music/Jazz/Monk--Nutty/track13.ogg"],
["music/Jazz/Monk--Round_Midnight/track02.ogg"],
["music/Jazz/Monk--Round_Midnight/track14.ogg"],
["music/Jazz/Monk--Round_Midnight/track15.ogg"],
["music/Jazz/Monk--Round_Midnight/track08.ogg"],
["music/Rock/FNM--Who_Cares_A_Lot_2/track02.ogg"],
["music/Rock/FNM--Who_Cares_A_Lot_2/track08.ogg"],
["music/Rock/FNM--Who_Cares_A_Lot_1/track02.ogg"],
["music/Rock/FNM--Who_Cares_A_Lot_2/track01.ogg"]]

#music_names_shuffled = shuffle music_names.sort
puts

music_names_shuffled = music_shuffle music_names

music_names_shuffled.each do |name|
  puts name
end

puts
puts 'Done'
