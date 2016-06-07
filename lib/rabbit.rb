def answer(names)
  #1. Generate alphabet hash

  letters = ("a".."z").to_a
  n = 1
  alphabet = {}

  letters.each do | a |
    alphabet[a] = n
    n += 1
  end

  words = {} # Create a hash to store the words with their values

  #2. Iterate over array of words
  names.each do | name |

    total = 0 # Set a new char total for each word

    #3. Iterate over characters
    name.each_char do | char |

      #4. Create a char value total using the alphabet hash
      total += alphabet[char]
    end

    words[name] = total #5. Assign value to word
  end

  #5. Simple sort names array by values
  names.sort_by!{| name | words[name] }

  #6. Set up for hash iteration
  previous_value = 0
  unsorted = []
  output = []

  p names.reverse

 #7. Iterate over hash for final output
  names.each do | name |

    #8. Check for repeats
    if words[name] == previous_value

      unsorted << name
    #9. Add repeats to output first
    elsif unsorted.any?
      output += unsorted
      unsorted = []

    #10. Then add name to output
      output << name
    else

    #11. Or just send name straight to output
      output << name
    end
    previous_value = words[name]
  end

  output += unsorted #12. Add remaining unsorted to output

  #13. Format the output array by reversing it
  output.reverse
end
