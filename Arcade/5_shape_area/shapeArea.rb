def shapeArea(n)
  return 1 if n == 1
  ((n - 1) * 4) + (shapeArea(n - 1))
end

puts shapeArea(4)
