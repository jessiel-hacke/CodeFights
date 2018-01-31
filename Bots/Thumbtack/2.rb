def proCategorization(pros, preferences)
    preferences_hash = {}
    preferences.each_with_index do |preference, index|
        preference.each do |pr|
          preferences_hash[pr] = [] if preferences_hash[pr].nil?
          preferences_hash[pr] <<  pros[index]
        end
    end
    preferences_hash.to_a.sort.map {|d| [[d[0]], d[1]]}
end

pros = ["Jack", "Leon", "Maria"]

preferences = [["Computer repair", "Handyman", "House cleaning"],
               ["Computer lessons", "Computer repair", "Data recovery service"],
               ["Computer lessons", "House cleaning"]]

proCategorization(pros, preferences)
