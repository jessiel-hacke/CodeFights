def makeArrayConsecutive2(statues)
  missing = (statues.min..statues.max).to_a - statues
  missing.size
end
