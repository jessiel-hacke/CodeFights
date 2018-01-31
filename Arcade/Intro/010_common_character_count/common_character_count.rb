def commonCharacterCount(s1, s2)
  a1 = s1.split("")
  a2 = s2.split("")
  count = 0
  a1.each do |x|
    next unless index = a2.index(x)
    count += 1
    a2.delete_at(index)
  end
  count
end
