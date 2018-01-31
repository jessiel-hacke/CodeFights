def allLongestStrings(input_array)
  input_array.select {|a| a.size == input_array.map{|c| c.size}.max}
end
