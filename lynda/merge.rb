h1 = { "a" => 111, "b" => 222}
h2 = {"b" => 333, "c" => 444}

#you see there is a conflict with the B value so it only returns the top one
puts h1.merge(h2) #returns {"a"=>111, "b"=>333, "c"=>444}

#{} is used for conflict resolution
# key = conflicting key
# old = old value that is in h1
# new = the value that will be overridden

#makes new win
puts h1.merge(h2){|key,old,new| new} #returns {"a"=>111, "b"=>333, "c"=>444}

#makes old win
puts h1.merge(h2){|key,old,new| old} #returns {"a"=>111, "b"=>222, "c"=>444}

# last value tells what we want to see happen
puts h1.merge(h2){|key,old,new| old*1} # returns {"a"=>111, "b"=>444, "c"=>444}

#LONG HAND
# want to end up with lowest value
h1.merge(h2) do |key,old,new|
    if old < new
        old
    else
        new
    end
end # returns {"a"=>111, "b"=>222, "c"=>444}

#SHORT HAND
h1.merge(h2){|k,o,n| o < n ? o : n} # returns {"a"=>111, "b"=>222, "c"=>444}

# to change value use !
h1.merge!(h2)

puts h1 #returns {"a"=>111, "b"=>333, "c"=>444}
puts h2 #returns {"b"=>333, "c"=>444}
