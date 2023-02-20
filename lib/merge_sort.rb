def merge_sort(arr)
  return 'Not valid!' if arr.length.zero?

  left_arr = arr.slice!(0..(arr.length - 1) / 2)
  right_arr = arr

  if left_arr.length > 1 || right_arr.length > 1
    arr = [merge_sort(left_arr), merge_sort(right_arr)]
    left_arr, right_arr = arr[0], arr[1]
  end

  i = 0
  arr = []
  while i <= left_arr.length + right_arr.length
    if left_arr.empty? || right_arr.empty?
      left_arr.empty? ? arr.push(right_arr) : arr.push(left_arr)
      return arr.flatten
    end
    left_arr[0] < right_arr[0] ? arr.push(left_arr.slice!(0)) : arr.push(right_arr.slice!(0))
  end
end

arr = Array.new(rand(5..15)) { rand(0..999) }
print merge_sort(arr)
puts ''
