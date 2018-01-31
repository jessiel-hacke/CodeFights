def groupingDishes(dishes)
  grouped = {}
  dishes.each do |dish|
    food = dish[0]
    dish[1..-1].each do |ingredient|
      grouped[ingredient] = [] if grouped[ingredient].nil?
      grouped[ingredient] << food
      grouped[ingredient].sort!
    end
  end
  grouped.select {|_, v| v.length > 1}.to_a.map{|v| v.flatten}
end

print groupingDishes(dishes)
