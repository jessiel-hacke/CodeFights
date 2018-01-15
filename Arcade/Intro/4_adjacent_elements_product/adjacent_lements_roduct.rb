NegativeInfinity = -1.00/0.00

def adjacentElementsProduct(input_array)
  max = NegativeInfinity
  input_array.each_with_index do |value, index|
    next if index == input_array.size - 1
    product = value * input_array[index + 1]
    max = product if product > max
  end
  max
end

puts adjacentElementsProduct([-23, 4, -3, 8, -12])
