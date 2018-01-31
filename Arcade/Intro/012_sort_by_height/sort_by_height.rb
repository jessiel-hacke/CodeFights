def sortByHeight(a)
  srt = a.select {|c| c != -1}.sort
  i = 0
  a.each_with_index do |value, index|
    next if value == -1
    a[index] = srt[i]
    i += 1
  end
  a
end
