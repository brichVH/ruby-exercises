# Method name: shortest_string(list)
# Inputs:      a list of strings
# Returns:     the shortest string in the list
# Prints:      Nothing

def shortest_string(list)
  # This is your job. :)
  longest = list.first
  list.each do |value|
    if value.length < longest.length
      longest = value
    end
  end
  return longest
end

if __FILE__ == $PROGRAM_NAME
  # I'd advise putting some sanity checks here.
  # How else will you be sure your code does what you think it does?
  p shortest_string(["blake", "valuehealth", "work", "a"]) == "a"
  p shortest_string(["blake", "valuehealth", "work", "bbbbbbbbbbbbbbbbbbb"]) == "work"
end
