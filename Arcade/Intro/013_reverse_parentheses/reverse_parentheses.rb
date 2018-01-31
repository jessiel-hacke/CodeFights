def reverseParentheses(s)
  while true
    a = s[/\(([^\(\)]+)\)/] # regex for innermost brackets
    break if a == nil
    s = s.sub(a, a[1..-2].reverse)
  end
  s
end
