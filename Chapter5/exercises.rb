#Sort in descending order. Tried this without the to_i at first and realized it was giving me 9,8,7,11,10. Maybe because of the 1s at the beginning. 
#Not sure why 10 after 11 though.
arr = ['10', '11', '9', '7', '8']
results = arr.sort do |a,b|
  b.to_i <=> a.to_i
end

p results
puts "-----------------"
books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

books.sort_by! do |book|
  book[:published]
end
p books
puts "-------------------"
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_age = 0
munsters.each_value do |ageadd|
  total_age += ageadd["age"].to_i if ageadd["gender"] == "male"
end
p total_age

munsters.each do |k,v|
  puts "#{k} is #{v["age"]} years old and is #{v["gender"]}. "
end
puts "----------------"
n_arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

n_arr.map! do |array| 
  array.sort.reverse
end

p n_arr
puts "----------------"
z_arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

z_arr.map do |value|
  new_hash = {}
  value.each do |k,v|
  new_hash[k] = v+1
  end
p new_hash
end

