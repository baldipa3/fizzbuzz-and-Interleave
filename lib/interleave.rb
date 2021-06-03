def interleave(a, b)
  a_size = a.size
  b_size = b.size

  raise ArgumentError.new("Array cant be the same size") if a_size == b_size

  return a if b.empty?
  return b if a.empty?

  interloop = 0
  sum = 0

  if a_size > b_size
    interloop = a_size / b_size
    b.each do |element|
      sum += interloop
      a.insert(sum, element)
      sum += 1
    end
    return a
  else
    interloop = b_size / a_size
    a.each do |element|
      sum += interloop
      b.insert(sum, element)
      sum += 1
    end
    return b
  end
end
