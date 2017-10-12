# collect/map works with Arrays, Hashes, and Ranges

array = [1,2,3,4,5]

#collect/map iterates throguh array and takes every item and passes it up to i and applies processing from code block and places value into NEW array
print array.collect{|i| i + 1} #returns [2, 3, 4, 5, 6]

print array.collect{|i| i * 40} #returns [40, 80, 120, 160, 200]
print ['apple', 'banana', 'orange'].map {|fruit| fruit.capitalize} #returns ["Apple", "Banana", "Orange"]