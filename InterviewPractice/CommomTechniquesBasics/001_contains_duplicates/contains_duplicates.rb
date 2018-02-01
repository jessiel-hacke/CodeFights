def containsDuplicates(a)
  a.uniq.length != a.length
end

a = [1, 2, 3, 4]
print containsDuplicates(a)
