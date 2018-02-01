def arrayMaxConsecutiveSum2(inputArray)
  max_ending_here = inputArray[0]  #stores the sum of MSP till position 'i'
  max_so_far = inputArray[0]       #stores the sum of MSP

  for i in 1..inputArray.length-1
    max_ending_here = [array[i], max_ending_here + array[i]].max
    max_so_far = [max_so_far, max_ending_here].max
  end
  max_so_far
end

print arrayMaxConsecutiveSum2(inputArray)
