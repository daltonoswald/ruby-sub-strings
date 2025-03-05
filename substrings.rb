dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# def substrings(string, dictionary)
#   # array = string.split(" ")
#   array = string.scan(/[\w-]+|[.,!?]+/)
#   subs = Hash.new
#   array.each { |word|
#     dictionary.each { |dict| 
#       word = word.downcase
#       if word = dict
#         if subs[word]
#           subs[word] += 1
#         else
#           subs[word] = 1
#         end
#       end
#     }
# }
#   puts subs
# end

def substrings(string, dictionary)
  # Breaks string down into an array separeted by spaces and puncuation
  array = string.scan(/[\w-]+|[.,!?]+/)
  # Initialize the hash
  subs = Hash.new
  # Loop through each word in array from the input string
  array.each { |word|
  # Loop through each word in the dictionary for each word in array
    dictionary.each { |dict| 
    # comparisions need to be case-insensitive
      word = word.downcase
      # checks if the word includes a word from the dictionary, then either makes a key/value in the hash or adds +1 to the existing key/value
      if word.include? dict
        if subs[dict]
          subs[dict] += 1
        else
          subs[dict] = 1
        end
      end
    }
}
  puts subs
end

substrings("below", dictionary) # {"below"=>1, "low"=>1}
substrings("howdy below", dictionary) # {"how"=>1, "howdy"=>1, "below"=>1, "low"=>1}
substrings("go go going", dictionary) # {"go"=>3, "going"=>1, "i"=>1}
substrings("go GO go GO go GO", dictionary) # {"go"=>6}
substrings("Howdy partner, sit down! How's it going?", dictionary) # {"how"=>2, "howdy"=>1, "part"=>1, "partner"=>1, "it"=>2, "i"=>3, "sit"=>1, "down"=>1, "own"=>1, "go"=>1, "going"=>1}
substrings("X", dictionary) # {}
