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

puts shuffle [1,2,3,4,5,6,7,8,9,0]
