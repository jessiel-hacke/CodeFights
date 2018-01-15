def matrixElementsSum(matrix)
  result = 0
  for i in (0..(matrix[0].size-1))
    for j in (0..(matrix.size-1))
      current= matrix[j][i]
      break if  current == 0
      result += current
    end
  end
  result
end

puts matrixElementsSum([[1, 1, 1, 0], [0, 5, 0, 1], [2, 1, 3, 10]])
