# After they became famous, the CodeBots all decided to move to a new building and live together. The building is represented by a rectangular matrix of rooms. Each cell in the matrix contains an integer that represents the price of the room. Some rooms are free (their cost is 0), but that's probably because they are haunted, so all the bots are afraid of them. That is why any room that is free or is located anywhere below a free room in the same column is not considered suitable for the bots to live in.
# Help the bots calculate the total price of all the rooms that are suitable for them.
# Example
# For matrix = [[0, 1, 1, 2],
#               [0, 5, 0, 0],
#               [2, 0, 3, 3]]
# the output should be
# matrixElementsSum(matrix) = 9.

# Here's the rooms matrix with unsuitable rooms marked with 'x':
# For matrix = [[1, 1, 1, 0],
#               [0, 5, 0, 1],
#               [2, 1, 3, 10]]
# the output should be
# matrixElementsSum(matrix) = 9.

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
