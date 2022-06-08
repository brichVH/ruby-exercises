# Method name: factorial
# Inputs:      A single non-negative integer, n
# Returns:     The factorial of n (see below)
# Prints:      Nothing

# The factorial of 5 is denoted by 5! and is defined as
#   5! = 5*4*3*2*1
#
# In English, you'd read "5!" as "five factorial".  In general, the factorial
# of a number is the product of every number from that number down to 1, so
#
#   4! = 4*3*2*1
#  10! = 10*9*8*7*6*5*4*3*2*1
#

def factorial(n)
  if(n==1)
    return 1
  elsif(n > 0)
    return( n * factorial(n-1))
  end
end

if __FILE__ == $PROGRAM_NAME
  # What are the common cases?  What are the corner cases?
  # Your sanity checks should look like
  input = 10
  p factorial(input) == 3628800
  input = 11
  p factorial(input) == 39916800
end
