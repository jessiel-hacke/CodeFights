require 'matrix'

def connected?(index, next_index)
  row = (index[0] - next_index[0]).abs
  col = (index[1] - next_index[1]).abs
  row < 2 && col < 2
end

def evaluate_word(board, letters, current_index, visited)
  return true if letters.size == 0
  visited << current_index
  next_letter= letters[0]
  puts "#{next_letter}"
  next_indexes = Matrix[*board].each_with_index.with_object([]) { |(e,row,col),a| a << [row,col] if e==next_letter }
  i = 0
  while i < next_indexes.size
    next_index = next_indexes[i]

    if !visited.include?(next_index) && connected?(current_index, next_index)
      found = evaluate_word(board, letters[1..-1], next_index, visited)
      return true if found
      visited.pop
    end
    i += 1
  end
  false
end

def wordBoggle(board, words)
  found_words = []
  elements = board.flatten
  words.each do |word|
    found = false
    letters = word.split('')
    if letters.all? {|l| elements.include?(l)}
      current_letter = letters[0]
      current_indexes = Matrix[*board].each_with_index.with_object([]) { |(e,row,col),a| a << [row,col] if e==current_letter }
      visited = []
      current_indexes.each do |index|
        found = evaluate_word(board, letters[1..-1], index, visited)
        break if found
        visited.pop
      end
    end
    if found
      found_words << word
    end
  end
  found_words.sort
end

board = [["R","L","R"],
         ["E","A","O"],
         ["C","S","C"]]

words = ["RARE"]


print wordBoggle(board, words)
