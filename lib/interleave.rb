def interleave(a, b)
  a_size = a.size
  b_size = b.size

  raise ArgumentError.new("Array cant be the same size") if a_size == b_size

  biggest_array = [a,b].max_by(&:size).dup
  smallest_array = [a,b].min_by(&:size)

  return a if smallest_array.empty?

  interloop = biggest_array.size / smallest_array.size
  sum = 0

  smallest_array.each do |element|
    sum += interloop
    biggest_array.insert(sum, element)
    sum += 1
  end
  return biggest_array
end
