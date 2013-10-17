def sort array
  recursive_sort array, []
end

def recursive_sort unsorted_array, sorted_array
  if unsorted_array.length <= 0
    return sorted_array
  end

  still_unsorted = []
  smallest = unsorted_array.pop
  unsorted_array.each do |obj|
    if obj < smallest
      still_unsorted.push smallest
      smallest = obj
    else
      still_unsorted.push obj
    end
  end
  sorted_array.push smallest
  recursive_sort still_unsorted, sorted_array
end

puts sort(['do','list','call','bee','call','abc'])
