def translate words
	translated = words.split(" ").map {|word| to_piglatin(word)}
	translated.join(" ")
end

def to_piglatin(word)
	if ["a", "e", "i", "o", "u"].include?(word[0])
		"#{word}ay"
	else
		word.split
		i = 1;
		while  !["a", "e", "i", "o", "u"].include?(word[i])
			i += 1
		end
		i += 1 if word.include? "q"
		word.split("").rotate(i).join("") + "ay"	
	end
end

# TODO 
# try to refactor edge case for qu, iteration is kinda messy
#
#