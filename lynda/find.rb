
# FIND/DETECT searches for the first element that meets the criteria will always eiher return a single object or will return nil
# find/detect => Object or nil
puts (1..10).find{|i| i == 5} #returns 5
puts (1..10).find{|i| i % 3 == 0} #returns 3
puts (1..10).detect{|i| i % 3 == 0} #returns 3
puts (1..10).detect{|i| (1..10).include?(i * 3)} #returns 1
puts (1..10).find{|i| i == 20} #returns nil

##############################
# FIND-ALL/SELECT returns array 
# find_all/select => Array
print (1..10).find_all{|i| i % 3 == 0} #returns [3, 6, 9]
print (1..10).select{|i| (1..10).include?(i * 3)} #returns [1, 2, 3]

##############################
# any? returns boolean and searches if any elements meet the reqs.
# any? => Boolean
puts (1..10).any?{|i| i % 3 == 0} #returns true

##############################
# all? checks if they all meet it
# all => Boolean
puts (1..10).all?{|i| i % 3 == 0} #returns false

##############################
# delete_if deletes acts like find all but takes the extra step of removing them from the array
# delete_if => Array
print [*1..10].delete_if{|i| i % 3 == 0} #returns [1, 2, 4, 5, 7, 8, 10]

