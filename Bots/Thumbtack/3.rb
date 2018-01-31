require 'set'
#jaccard index

def jaccard_index(a, b)
  intersection = a & b
  union        = (a + b).uniq

  intersection.length.to_f / union.length.to_f
end

def spamClusterization(requests, ids, threshold)
  requests= requests.map {|rq| rq.downcase.gsub(/[^A-Za-z0-9\s]/i, ' ').split(' ') }
  clusters = []
  for i in 0..(requests.length - 1)
    a = requests[i]
    cluster = Set.new
    cluster << ids[i]
    for j in 0..(requests.length - 1)
      next if i == j
      b = requests[j]
      if jaccard_index(a, b) >= threshold
        cluster << ids[j]
      end
    end
    if cluster.size > 1
      clusters << cluster.sort
    end
  end

  result = Set.new
  for id in ids
    set = clusters.select {|a| a.include?(id)}
    aux = set.flatten.uniq.sort unless set.empty?
    result << aux if aux.size > 1
  end
  result.to_a.sort
end


requests = ["I need a new window.",
            "I really, really want to replace my window!",
            "Replace my window.",
            "I want a new window.",
            "I want a new carpet, I want a new carpet, I want a new carpet.",
            "Replace my carpet"]

ids = [374, 2845, 83, 1848, 1837, 1500]

threshold = 0.5

spamClusterization(requests, ids, threshold)
