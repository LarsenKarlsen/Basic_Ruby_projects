test_string = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

test_input_1 = "Howdy partner, sit down! How's it going?"
test_input_2 = "below below"

output_1 = { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
output_2 ={ "below" => 1, "low" => 1 }


def substrings (string, array)
    # converting string and array to lowercase
    string = string.downcase
    array.map! {|i| i.downcase}

    string = string.split(" ") # split string into array
    out = Hash.new(0) # output

    array.each do |item|
        string.reduce(Hash.new(0)) do |result, word|
            if word.include? item
                result[item] += 1
            end
        out = out.merge(result) {|key, oldval, newval| oldval + newval}
        result.clear
        end
    end
    out
end

substr =  substrings(test_input_1, test_string)