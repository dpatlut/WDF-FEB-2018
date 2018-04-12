#Need require because it is not preloaded in the ruby core library for optimization purposes.
require 'set'

#Sets
my_set = Set.new([1,2,3])
anotha_one = Set.new([1, 'c', :s])  
another_set = Set[1,2,3,4]

# Create new Set.
s = Set.new(["plato", "socrates"])

# Add two more elements.
s.add("cebes")
s.add("socrates")

# Get size.
puts s.size()

# See if Set includes this element.
puts s.include?("socrates")

