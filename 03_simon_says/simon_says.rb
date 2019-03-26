#write your code here
def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, times = 2)
	("#{word} " * times).strip
end

def start_of_word (word, index)
	word.slice(0..index-1)
end

def first_word(word)
	word.split.first
end

def titleize(word)
	words = word.split(" ").map do |word|
		(word == "over" || word == "and" || word == "the") ? word : word.capitalize
	end
	words.first.capitalize!
	words.last.capitalize!
	words.join(" ")
end