require 'yaml'
# p File.read("sample_file.txt")

# r = read
# r+ = read/write (pointer starts at beginning of file or wherever the pointer is in the file)
# w = write only (pointer starts at beginning of file)
# w+ = read/write, but overwrites 
# a = append mode (write only. pointer will start at the end of the file)
# a+ = reads and appends

f1 = File.open("sample_file.txt", "a+")
puts f1.read
puts f1.inspect
f1.write("I am inserting new stuff, yo!")
f1.close

# WAY 1: creates the file if it doesn't exist
File.open("another_sample_file.txt", "w") do |f|
    #puts to write to the file
    f.puts "This is a new file with text I'm writing to it."
end

# WAY 2: creates a file that does not exist
f2 = File.open("another_sample_file.txt", "r") do |f1|
    while line = f1.gets
        puts line
    end
end

f3 = File.open("trex_data.txt", "r+")
p f3. read
#takes pointer back to beginning
f3.rewind
buffer = ""
p f3.read(5, buffer)
p buffer
f3.close

p "******************"
File.open("trex_data.txt") do |f|
    #move pointer to where you want it
    f.seek(3, IO::SEEK_SET)
    #from that pointer, read 3
    p f.read(3)
end

# readlines returns an array. If there are breaks, it makes it separate array items
data = File.readlines("trex_data.txt")
p data

p "*********************"
File.open("yaml_data.yaml", "r").each do |f|
    #load = read
    puts YAML::load(f)
end

f4 = File.open("new_yaml.yaml", "w+")
    #dump = write
f4.puts YAML::dump("Test")
f4.close

# Yet another way to create and write to a file
f5 = open("my_data.txt", "w")
f5.write("New Data")
f5.close