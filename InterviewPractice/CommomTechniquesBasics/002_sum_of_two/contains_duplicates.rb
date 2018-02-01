require 'set'
def sumOfTwo(a, b, v)
  return false if a.empty? || b.empty?
  set_a = Set.new
  a.each {|val| set_a << val}
  b.each {|val| return true if set_a.include?(v-val)}
  false
end
