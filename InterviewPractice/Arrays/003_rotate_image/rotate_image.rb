def transpose(a)
  for i in 0..(a.size - 1)
    for j in i..(a.size - 1)
      a[i][j], a[j][i] = a[j][i], a[i][j]
    end
  end
end

def rotateImage(a)
  transpose(a)
  a.map {|c| c.reverse}
end

print rotateImage([[1, 2, 3], [4, 5, 6],[7, 8, 9]])
