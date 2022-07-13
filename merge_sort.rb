def merge_sort(arr)
  return arr if arr.size <= 1

  half_size = arr.size / 2
  left_arr = merge_sort(arr[0...half_size])
  right_arr = merge_sort(arr[half_size...arr.size])

  sorted_arr = []
  until left_arr.empty? || right_arr.empty?
    case left_arr.first > right_arr.first
    when true then sorted_arr << right_arr.shift
    when false then sorted_arr << left_arr.shift
    end
  end
  sorted_arr.concat(left_arr, right_arr)
end

test_arr = Array.new(rand(2..100))
test_arr.map! { rand(1..100) }
merged_arr = merge_sort(test_arr)
p merged_arr
