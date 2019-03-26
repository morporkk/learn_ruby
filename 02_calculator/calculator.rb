def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(numbers)
	total = 0
	numbers.each { |value| total += value}
	total
end

def multiply(a, *b)
	b.each {|num| a *= num}
	a
end

def power(a,b)
	a**b
end

def factorial
	self <= 1 ? 1 : self * (self - 1).factorial
end

