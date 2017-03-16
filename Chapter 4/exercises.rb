flinstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flinstone_hash = {}
flinstones.each_with_index {|item, index| flinstone_hash[index] = item }

p flinstone_hash
puts '------------------'
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

age_sum = ages.values.inject {|sum, value| sum + value}

p age_sum
puts '-------------------'
m_ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
p m_ages.select! {|k,v| v < 100}
puts '___________________'
y_ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
p y_ages.values.min
puts '-------------------'
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
#p flintstones.index {|name| name[0, 2] == "Be"} Commented out earlier solution to make sure it didn't interfere with future ones.
p flintstones.map! { |name| name[0,3] }

