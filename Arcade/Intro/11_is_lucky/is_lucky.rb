def isLucky(n)
  a = n.to_s.split('').map{|d| d.to_i}
  return false if a.size.odd?
  l = a.size / 2
  a[0..l-1].reduce(:+) == a[l..-1].reduce(:+)
end
