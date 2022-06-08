# Method name: commas
# Inputs:      A number, n
# Returns:     A string representing the input, with commas inserted into the
#              correct position.
# Prints:      Nothing

# For example,
#
#  commas(123)     == "123"
#  commas(1234)    == "1,234"
#  commas(12345)   == "12,345"
#  commas(1234567) == "1,234,567"

# Note #1
# If it's too much, don't worry about handling negative numbers at first.

# Note #2
# As always, focus first on how you would do this *as a human*. Imagine you
# has a piece of paper with a comma-less number on it.  How would you decide to
# insert the commas?  Which comma would you insert first?

def commas(num)

  str = num.to_s
  count = str.size - 3

  while count > 0
    str.insert(count, ",")
    count -= 3
  end
  return str

end

if __FILE__ == $PROGRAM_NAME
  # What are the common cases?  What are the corner cases?
  # Your sanity checks should look like
  input = 1234567890
  p commas(input) == "1,234,567,890"
  input = 12345678901234567890
  p commas(input) == "12,345,678,901,234,567,890"
end

# Hint #1
# Use .to_s to convert a number to a string.  That is,
#
#  5.to_s   == "5"
#  100.to_s == "100"
