def findLongestSubarrayBySum(s, arr)
  max_index = 0
  sum = 0
  j = 0
  result = [-1]
  arr.each_with_index do |value, index| #O(n)
    sum += value
    while j <= index && sum > s
      sum -= arr[j]
      j += 1
    end
    next if s != sum
    if max_index <= index - j + 1
      max_index = index - j + 1
      result = [j + 1, index + 1]
    end
  end
  result
end

arr = [1, 0, 3, 7, 5]
s = 0

puts "Expect [2, 2]"
puts "Got: #{findLongestSubarrayBySum(s, arr)}" # == [2, 2]

arr = [1]
s = 3

puts "Expect [-1]"
puts "Got: #{findLongestSubarrayBySum(s, arr)}" # == [-1]

arr = [5]
s = 5

puts "Expect [1, 1]"
puts "Got: #{findLongestSubarrayBySum(s, arr)}" # == [1, 1]

arr = [1, 2, 3, 7, 5]
s = 12

puts "Expect [2, 4]"
puts "Got: #{findLongestSubarrayBySum(s, arr)}" # == [2, 4]

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
s = 15

puts "Expect [1, 5]"
puts "Got: #{findLongestSubarrayBySum(s, arr)}" # == [1, 5]

arr = [1, 2, 3, 4, 5, 0, 0, 0, 6, 7, 8, 9, 10]
s = 15

puts "Expect [1, 8]"
puts "Got: #{findLongestSubarrayBySum(s, arr)}" # == [1, 8]
