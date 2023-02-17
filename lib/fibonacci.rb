def fibs(num)
  return 'Not valid' if num.negative?

  arr = []
  i = 0
  while i < num
    i.zero? || i == 1 ? arr.push(i) : arr.push(arr[i - 1].to_i + arr[i - 2].to_i)
    i += 1
  end
  arr
end
