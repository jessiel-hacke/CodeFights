require 'json'

def dumb_sumInRange(nums, queries)
  queries.map{|from, to| nums[from..to].sum }.sum % ((10 ** 9) + 7)
end

def dumb2_sumInRange(nums, queries)
  queries.map {|from, to| nums[from..to]}.reduce(:+).sum % 1000000007
end

def sumInRange(nums, queries)
  memory = {}
  sum = 0
  result = 0
  nums.each_with_index do |value, index|
    sum += value
    memory["0_#{index}"] = sum
  end

  queries.each do |from, to|
    if memory["#{from}_#{to}"].nil?
      t = memory["0_#{to}"] - memory["0_#{from - 1}"]
      memory["#{from}_#{to}"] = t
      result += t
    else
      result += memory["#{from}_#{to}"]
    end
  end
  result % 1000000007
end

file = File.read('test-12.json')
data_hash = JSON.parse(file)['input']

nums = data_hash['nums']
queries = data_hash['queries']

print sumInRange(nums, queries)
