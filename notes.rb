#!/usr/bin/env ruby

#string1 = String.new("Hello World!")
#puts string1

# Method that returns string with a name
#def sayHello(name)
#  result = "Hello " + name + "!"
  # Using the ", the sequence #{expression} is replaced by the value of expression.
#  result = "Hello #{name}!"   
#  return result
#since the value returned by a ruby method is the value of the last expression evaluated, we can get rid of the return statement altogether.
#  "Hello #{name}!"
#end
#puts sayHello("Manos")
#
# Creating an array
#empty?:
#empty1 = []
#empty2 = Array.new
#array of words without the shitload of quotes?
#wordarray = %w{ one two three four cat }
#
#array = [12, 'test', 3.5]
#first = array[0]
#puts first
#puts array[0]
# hash
#instSection = Hash.new(0) # To define default value as 0 instead of the default nil. (this line could be ommited if it wasn't for the default value)
#instSection = {
#  'cello'     => 'string',
#  'clarinet'  => 'woodwind',
#  'drum'      => 'percussion',
#  'oboe'      => 'woodwind',
#  'trumpet'   => 'brass',
#  'violin'    => 'string'
#}
#puts instSection['drum']
# if and while statements:
if count > 10
  puts "Try again"
elsif tries == 3
  puts "You lose"
else
  puts "Enter a number"
end

while weight < 100 and numPallets <= 30
  pallet = nextPallet()
  weight += pallet.weight
  numPallets += 1
end


if radiation > 3000
  puts "Danger, Will Robinson"
end
# OR:
puts "Danger, Will Robinson" if radiation > 3000

while square < 1000
   square = square*square
end
# OR:
square = square*square  while square < 1000
# some regex
 /Perl|Python/ is the same as /P(erl|ython)/
 /ab+c/ match a string containing an 'a' followed by one or more 'b's followed by a 'c' .  change + to * and it becomes ..zero or more 'b's 
/\d\d:\d\d:\d\d/     # a time such as 12:34:56
/Perl.*Python/       # Perl, zero or more other chars, then Python
/Perl\s+Python/      # Perl, one or more spaces, then Python
/Ruby (Perl|Python)/ # Ruby, a space, and either Perl or Python
# But how to use them?












