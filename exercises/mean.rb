# Method name: mean
# Input: a list of numbers
# Returns: the MEAN (aka average) of all the numbers in the list
# Prints: Nothing
#
# See: https://www.freemathhelp.com/arithmetic-mean.html
#
# For example,
#   The mean of 5 and 2 is 2.5 since (5 + 2)/2 is 3.5
#   The mean of 5 and 5 is 5.0 since (5 + 5)/2 is 5.0
#   The mean of 10, 20, and 30 is 20.0 since (10 + 20 + 30)/3 is 20.0
#   etc.
#
# Things we'll need:
#   1. A way to calculate the sum of the numbers in the list
#   2. A way to calculate the length of the list
#
# See: http://www.ruby-doc.org/core-2.1.2/Array.html#method-i-length

# This is how we require the sum.rb file in the current folder.
# We can now use the "sum" method we defined there as if we defined it here!
require_relative "./sum"

def mean(list)
  total = sum(list) # This is the "sum" method from our sum.rb file
  #print list.size
  return total/list.length # Given the list's sum, how can we calculate the average?
end

if __FILE__ == $PROGRAM_NAME
  # I'd advise putting some sanity checks here.
  # How else will you be sure your code does what you think it does?
  # p sum([1]) == 1
     p mean([0]) == 0
     p mean([-1]) == -1
     p mean([1, -1]) == 0
     p mean([0, 10, 0, 20]) == 30/4
     p mean([-111, -111, -111]) == -333/3
     p mean([11, 22, 33]) == 66/3
end
