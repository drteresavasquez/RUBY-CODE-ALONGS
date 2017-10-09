# # declaration of a variable
# instruction_staff = ["Casey", "Hannah", "Jisie"]

# #for loop
# for staff in instruction_staff
#     # puts staff
#     if staff == "Casey"
#         fav_animal = "Pangolin"
#     elsif staff == "Hannah"
#         fav_animal = "Dog"
#     else
#         fav_animal = "Penguin"
#     end
#     puts "#{staff}'s favorite animail is a #{fav_animal}"
# end

# driving_license_num = 12345
# puts driving_license_num
# puts "The interger #{driving_license_num} as a float: #{driving_license_num.to_f}"
# puts driving_license_num.class
# puts driving_license_num.is_a? Integer
# puts driving_license_num.is_a? String

# social_security_number = 987.654
# puts social_security_number.class
# puts social_security_number.is_a? Float
# # to_i cuts off the decimal
# puts social_security_number.to_i

# ssn_str = social_security_number.to_s
# puts ssn_str.is_a? String

# ssn_str = "social security number"
# puts ssn_str.upcase
# puts ssn_str
# puts ssn_str.downcase
# puts ssn_str.capitalize

# hello = "Hello"
# puts hello
# hello << " my name is "
# puts hello
# teresa = "Teresa "
# my_hobby = "and I like to read."
# #can add multiple variables separated by a comma to concat
# hello.concat(teresa, my_hobby)
# puts hello

# # SYMBOLS - data type that can NEVER change. Use because the Object ID never changes either
# puts :teresa

# #HASHES - data type

# #Initializing a hash
# socks = Hash.new

# #socks and pants are written the same just in differenct ways. They are symbols also
# socks = {:polka_dot => 3, :striped => 5}
# puts socks
# puts socks[:polka_dot]

# pants = {parachute: "cool", skinny: "yes!"}
# puts pants[:parachute]

# #ALSO Initializing a hash. This example is not creating symbols
# ties = {}
# ties = {"bow ties" => 4, "skinny tie" => 15, "cravat" => 20}
# puts ties
# puts ties["bow ties"]

# puts "Is the pants hash empty? #{pants.empty?}"

# #the keys LIKE Object.keys
# puts pants.keys

# puts "Does pants have key parachute? #{pants.has_key?(:parachute)}"
# puts "Does pants have key banana? #{pants.has_key?(:banana)}"
# puts "Does pants have value cool? #{pants.has_value?("cool")}"
# puts "Does pants have value banana? #{pants.has_value?("banana")}"


# # Here we see that parachute is a symbol and its key doesn't change just becasue it is inside a different object
# pants = {
#     parachute: :cool,
#     skinny: "ewww" }
# puts pants[:parachute]
# puts "Object id of pants: #{pants.object_id}"
# puts "Object id of pants[:parachute]: #{pants[:parachute].object_id}"
# for i in pants.keys
#   puts i.object_id
# end
# shirts = {
#   parachute: :cool,
#   skinny: "ewww" }
# puts "Object id of shirts: #{shirts.object_id}"
# puts "Object id of shirts[:parachute]: #{shirts[:parachute].object_id}"
# for i in shirts.keys
#   puts i.object_id
# end

# # Becomes a new hash...switches the values and keys...keys become values and values become keys
# puts "Original hash: #{shirts}"
# puts "Inverted hash: #{shirts.invert}"
# puts "The key of ewww is #{shirts.key("ewww")}"
# puts "The key of cool, which is a symbol, is #{shirts.key(:cool)}"
# puts "The hash #{shirts} has a length of #{shirts.length}"
# puts "The string #{teresa} has a length of #{teresa.length}"
# puts "The array #{instruction_staff} has a length of #{instruction_staff.length}"

# pants_ties = pants.merge(ties)
# puts "the merge hash of pants and ties: #{pants_ties}"

# # declaration of a variable
# instruction_staff = ["Casey", "Hannah", "Jisie"]

# my_array = Array.new
# # like push the << is a shovel and adds it to the the array
# my_array << ["hello", 1]
# puts "my_array: #{my_array}"

# arr2 = []
# # insert takes position and value
# arr2.insert(0, 56)
# puts "arr2: #{arr2}"

# arr3 = [1,2,3,4,5]
# #push adds too end
# arr3.push("apples")
# puts "arr3: #{arr3}"
# #show me the second item in the array
# puts "arr3, second element #{arr3[1]}"
# puts "arr3, 4th element #{arr3.at(3)}"
# puts "first element: #{arr3.first} and the last element: #{arr3.last}"
# puts "Does arr3 include 5? #{arr3.include?(5)}"

# #makes an array with 5 place holders
# arr4 = Array.new(5)
# puts "arr4: #{arr4}"

# #repeats value 3 times
# arr5 = Array.new(3, "apple")
# puts "arr5: #{arr5}"
# arr5.unshift("Hello")
# #takes off the amount of elements you specifiy in parenthesis
# arr5.pop(16)

# #creates an array with arrays inside
# arr6 = Array.new(4) {Array.new(2)}
# puts "arr6: #{arr6}"
# p arr6.size

# #creates an array with hashes inside
# arr6 = Array.new(4) {Hash.new}
# puts "arr6: #{arr6}"

true_value = true
puts "#{true_value}"
color = true_value ? "green" : "red"
puts "#{color}"

