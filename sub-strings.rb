def substrings (string, array)
    array.reduce(Hash.new(0)) do |result, element|
        if string.gsub(/[[:punct:]]/, '').split(' ').map {|s| s.downcase}.join(' ').include?(element)
            result[element] += 1
        end
        result
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit","low","low","low"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
