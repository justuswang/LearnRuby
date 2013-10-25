puts "\n1. Use the \"each\" method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value."
array = [1,2,3,4,5,6,7,8,9,10]
array.each do |element|
  puts element
end

puts "\n2. Same as above, but only print out values greater than 5."
array.each do |element|
  if element > 5
    puts element
  end
end

puts "\n3. Now, using the same array from #2, use the \"select\" method to extract all odd numbers into a new array."
new_array = array.select {|item| item%2 == 1}
puts new_array

puts "\n4. Append \"11\" to the end of the array. Prepend \"0\" to the beginning."
tmp_array = [0]
array = tmp_array + array
array.push 11
puts array

puts "\n5. Get rid of \"11\". And append a \"3\"."
array.pop
array.push 3
puts array

puts "\n6. Get rid of duplicates without specifically removing any one value."
puts array.uniq

puts "\n7. What's the major difference between an Array and a Hash?"
puts "Hash is similar to an Array, except that indexing is done via arbitrary keys of any object type, not an integer index."

puts "\n8. Create a Hash using both Ruby 1.8 and 1.9 syntax."
h = Hash["a"=>1, "b"=>2, "c"=>3, "d"=>4]
puts h

puts "\nSuppose you have a h = {a:1, b:2, c:3, d:4}"
puts "\n9. Get the value of key \"b\"."
puts h["b"]

puts "\n10. Add to this hash the key:value pair {e:5}"
h["e"] = 5
puts h

puts "\n13. Remove all key:value pairs whose value is less than 3.5"
h.delete_if {|key, value| value < 3.5}
puts h

puts "\n14. Can hash values be arrays? Can you have an array of hashes? (give examples)"
puts "Yes, hash values can be arrays. e.g."
h["array"] = [1,2,3,4,5]
puts h

puts "\n15. Look at several Rails/Ruby online API sources and say which one your like best and why."
puts "I like http://www.ruby-doc.org and http://api.rubyonrails.org because they are official and easy to search."
