#!/usr/bin/env ruby

#string1 = String.new("Hello World!")
#puts string1

# Method that returns string with a name
def sayHello(name)
  result = "Hello #{name}!"   
#  return result #since the value returned by a ruby method is the value of the last expression evaluated, we can get rid of the return statement altogether.
  "Hello #{name}!"
end
puts sayHello("Manos")
#



