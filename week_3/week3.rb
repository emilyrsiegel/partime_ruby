array = [1, 2, 3]
i = 0
while i < array.length
	puts array [i]
	counter += 1
end

hash = {:a =>1, :b => 2}

hash.each do |a, b|
	puts "key: #{a}"
	puts "value #{b}"
end
