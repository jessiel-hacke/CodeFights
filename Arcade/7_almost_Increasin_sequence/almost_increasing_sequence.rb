def almostIncreasingSequence(sequence)
    return false if sequence.length  < 2
    return true  if sequence.length == 2

    max1 = sequence[0]
    max2 = sequence[1]
    count = 0

    sequence[1..-1].each_with_index do |item, index|
      prev = sequence[index]
      nxt  = sequence[index+2]

      if prev >= item
        count += 1
        return false if count > 1
        if index > 0 and item <= max1 and nxt and nxt <= max2
          return false
        end
      end

      max1 = prev if prev > max1
      max2 = item if item > max2
    end

    return count == 1
end

puts almostIncreasingSequence([1, 3, 2])
