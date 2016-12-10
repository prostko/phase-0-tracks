# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase
p "InVeStIgAtIoN" == "iNvEsTiGaTiOn".swapcase

p "zom".insert(1, "o")
p "zoom" == "zom".insert(1, "o")

p "enhance".center(23, " ")
p "    enhance    " == "enhance".center(3, " ")

p "Stop! You’re under arrest!".upcase
p "STOP! YOU’RE UNDER ARREST!" == "Stop! You’re under arrest!".upcase

p "the usual".ljust(18, " suspects")
p "the usual suspects" == "the usual".ljust(18, " suspects")

p " suspects".rjust(18, "the usual ")
p "the usual suspects" == " suspects".rjust(18, "the usual ")

p "The case of the disappearing last letter".chop # or [range] or slice(range)
p "The case of the disappearing last lette" == "The case of the disappearing last letter".chop

p "The mystery of the missing first letter".slice(1..-1) # or byteslice(range) or just [range]
p "he mystery of the missing first letter" == "The mystery of the missing first letter".slice(1..-1)

p "Elementary,    my   dear        Watson!".tr_s(" ", " ")
p "Elementary, my dear Watson!" ==  "Elementary,    my   dear        Watson!".tr_s(" ", " ")

  "z".setbyte(0, 122)
puts "z".codepoints # or each_codepoint with a block, either way you need to pull it out of the array and transform it into an integer
p 122 == "z".codepoints.join.to_i
# (What is the significance of the number 122 in relation to the character z?)
# it is the integer ordinal of the letter z, which incidently is a great mathalete squad name

p "How many times does the letter 'a' appear in this string?".count("a")
p 4 == "How many times does the letter 'a' appear in this string?".count("a")
