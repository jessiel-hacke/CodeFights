def has_duplicate_in_row(array)
  map = {}
  array.each do |value|
    next if value == '.'
    puts value
    return true if map[value]
    map[value] = true
  end
  false
end

def has_duplicate_in_column(array)
  map = {}
  array.each do |value|
    next if value == '.'
    puts value
    return true if map[value]
    map[value] = true
  end
  false
end

def check_mini_grid(grid)

  input[0..2].map{|d| d[0..2]}
end

def sudoku2(grid)
  grid.each do |row|
    return false if has_duplicate_in_row(row)
  end
  for i in 0..grid.size-1
    return false if has_duplicate_in_column(grid.map{|d| d[i]})
  end
  return false if check_mini_grid(grid)
  true
end


input = [['.', '.', '.', '1', '4', '.', '.', '2', '.'], ['.', '.', '6', '.', '.', '.', '.', '.', '.'], ['.', '.', '.', '.', '.', '.', '.', '.', '.'], ['.', '.', '1', '.', '.', '.', '.', '.', '.'], ['.', '6', '7', '.', '.', '.', '.', '.', '9'], ['.', '.', '.', '.', '.', '.', '8', '1', '.'], ['.', '3', '.', '.', '.', '.', '.', '.', '6'], ['.', '.', '.', '.', '.', '7', '.', '.', '.'], ['.', '.', '.', '5', '.', '.', '.', '7', '.']]
print sudoku2(input)
