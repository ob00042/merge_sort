def merge_sort(list, result = [])
  list = list.to_a
  
  return list if list.length == 1
  mid = list.length/2
  a = merge_sort(list[0..(mid-1)])
  b = merge_sort(list[(mid)..-1])
  merge( a, b, result)
  result
end

def merge(a, b, result)

  until a.empty? || b.empty? do
    result << (a.first < b.first ? a.shift : b.shift )
  end
(result.concat a).concat b
result
end

p merge_sort([100, 1, 3, 55, 6, 4, 2, 5, 44, 6])
