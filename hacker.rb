# get the image file name
# generate the decimal array file

#Open the jpg file and read it
file = File.open('f1.jpg', 'rb')
contents = file.read

#Get the byte array of the image file
decimal_array = contents.unpack('C*')
puts "#{decimal_array}"

# Write the byte array to a file
outfile = File.new('new_f1.txt', 'w')
outfile.puts(decimal_array)
outfile.close