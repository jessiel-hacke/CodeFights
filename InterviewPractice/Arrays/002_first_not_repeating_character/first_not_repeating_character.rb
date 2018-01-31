def firstNotRepeatingCharacter(s)
  for i in 0..(s.length-1)
    c = s[i]
    return c if s.index(c) == i && s.index(c, i + 1).nil?
  end
  return '_';
end
