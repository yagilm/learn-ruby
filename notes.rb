#!/usr/bin/env ruby

#string1 = String.new("Hello World!")
#puts string1

# Method that returns string with a name
def sayHello(name)
  result = "Hello " + name + "!"
  # Using the ", the sequence #{expression} is replaced by the value of expression.
  result = "Hello #{name}!"
  return result
#since the value returned by a ruby method is the value of the last expression evaluated, we can get rid of the return statement altogether.
  "Hello #{name}!"
end
#puts sayHello("Manos")
#
# Creating an array
#empty?:
empty1 = []
empty2 = Array.new
#array of words without the shitload of quotes?
wordarray = %w{ one two three four cat }

array = [12, 'test', 3.5]
first = array[0]
puts first
puts array[0]
# hash
instSection = Hash.new(0) # To define default value as 0 instead of the default nil. (this line could be ommited if it wasn't for the default value)
instSection = {
  'cello'     => 'string',
  'clarinet'  => 'woodwind',
  'drum'      => 'percussion',
  'oboe'      => 'woodwind',
  'trumpet'   => 'brass',
  'violin'    => 'string'
}
puts instSection['drum']
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

if line =~ /Perl|Python/
  puts "Scripting language mentioned: #{line}"
end

#The part of a string matched by a regular expression can also be replaced with different text using one of Ruby's substitution methods.

line.sub(/Perl/, 'Ruby')    # replace first 'Perl' with 'Ruby'
line.gsub(/Python/, 'Ruby') # replace every 'Python' with 'Ruby'

# Code blocks and Iterators
{ puts "Hello" }       # this is a block

do                     #
  club.enroll(person)  # and so is this
  person.socialize     #
end                    #

# A block can be associated with a call to a method.The method can invoke the block one or more times uing the yield statement.

def callBlock
  yield
  yield
end
callBlock { puts "In the block" }

#produces:
#In the block
#In the block

# Parameters can be provided to yield and they will be passed to the block. Within the block, you list the names of the arguments to receive these parameters between vertical bars (``|'').
  def callBlock
    yield ,
  end
  callBlock { |, | ... }

# Code blocks are used to implement iterators(=methods that return successive elements from some kind of collection(eg.an array))
a = %w( ant bee cat dog elk )    # create an array
a.each { |animal| puts animal }  # iterate over the contents
# How to implement the Array class's each iterator that loops through every element in the array, calling yield for each one.
# within class Array...   !pseudo code!
def each
  for each element
    yield(element)
  end
end

#Since all elements have an each method we can iterate over an arrays elements :
[ 'cat', 'dog', 'horse' ].each do |animal|
  print animal, " -- "
end
# Many looping constructs are methods in ruby:
5.times {  print "*" }
3.upto(6) {|i|  print i }
('a'..'e').each {|char| print char }
#produces: *****3456abcde

#Another output method we use a lot is printf, which prints its arguments under the control of a format string (just like printf in C or Perl).
printf "Number: %5.2f, String: %s", 1.23, "hello"
#produces: Number:  1.23, String: hello
#In this example, the format string "Number: %5.2f, String: %s" tells printf to substitute in a floating point number (allowing five characters in total, with two after the decimal point) and a string.

# the routine gets, which returns the next line from your program's standard input stream.
line = gets
print line
# gets stores the line it just read into the global variable $_

# Print all lines in the input stream that contains the word Ruby:
while gets           # assigns line to $_
  if /Ruby/          # matches against $_
    print            # prints $_
  end
end
# And the Ruby way of doing it:
ARGF.each { |line|  print line  if line =~ /Ruby/ }
# This uses the predefined object ARGF, which represents the input stream that can be read by a program.
