def firstDuplicate(a)
  a.each do |value|
    return value.abs if a[value.abs - 1] < 0
    a[value.abs - 1] = -a[value.abs - 1]
  end
  -1
end
