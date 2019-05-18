def substrings (regex, dictionary)
    matches = []
    dictionary.each do |word|
        if( regex.match(word) )
            matches << regex.match(word)
        end
    end
    puts matches
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings( 'below', dictionary )