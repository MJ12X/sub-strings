
puts "Please enter a sentence or phrase"
input = gets.chomp
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substring(string, dictionary)
    result = Hash.new(0)
    string.downcase.split.each do |string|
        dictionary.each do |substring|
            if string.include?(substring)
                result[substring] += 1
            end
        end
    end
    result
end

p substring(input, dictionary)