def parse_tree(tree, depth, nodes)
  return if tree.size < 5
  current_depth = depth
  stack = []
  nodes[current_depth] = [] if nodes[current_depth].nil?
  nodes[current_depth] << tree[1]

  tree[2..-2].each_with_index do |ch,index|
    if ch == '('
      stack.push(ch)
    elsif ch == ')'
      stack.pop
    end
    if stack.empty?
      current_depth += 1
      parse_tree(tree[2..index+2], current_depth, nodes)
      parse_tree(tree[index+3..-2], current_depth, nodes)
      return
    end
  end
end

def normalize_tree(tree)
  tree = tree.delete(' ').split('')
  i = 0
  while i < tree.length
    value = tree[i]
    if !value.match(/[^0-9]/)
      if !tree[i+1].match(/[^0-9]/)
        tree[i] = value + tree[i+1]
        tree.delete_at(i+1)
      else
        tree[i] = tree[i].to_i
        i += 1
      end
    else
      i += 1
    end
  end
  tree
end

def treeBottom(tree)
  tree = normalize_tree(tree)
  depth = 0
  nodes = {}
  tree = parse_tree(tree, depth, nodes)
  nodes[nodes.size - 1]
end

tree = "(2 (7 (2 () ()) (6 (5 () ()) (11 () ()))) (5 () (9 (4 () ()) ())))"


puts treeBottom(tree)
