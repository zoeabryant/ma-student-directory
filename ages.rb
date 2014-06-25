### So I tried to work out the average age on our course.

# first, all of our ages. No names at this stage!
@ages = ["24","32","22","19","19","22","23","30","32","25","26","22","29","32","34","24","27","25","35","21","24","32","22","23"]
@ages.sort! # put them all in order and keep it that way!

def count_ages
	puts "How many people are the same age?"
	ages_hash = Hash.new(0)

	@ages.each do |value|
		ages_hash[value] += 1
	end

	ages_hash.each do |age, count|
		if count > 1
			puts "#{count} people are #{age} years old"
		else
			puts "#{count} person is #{age} years old" #because grammar is important
		end
	end
end

def tellme_age_range
	puts "Our cohort ranges from #{@ages.first} to #{@ages.last} years old."
	puts "Obviously everyone is lovely regardless!"
end

def find_average
	#total = @ages.inject{|sum,x| sum + x}
	total = @ages.inject(:+) #shortcut
	length = @ages.length
	average = total.to_f / length
	puts 'The Average Age is:'
	puts average
end

def print_menu
	puts
	puts '1. What is the average age?'
	puts "2. What is the youngest and oldest age?"
	puts '3. How many people are the same age?'
	puts "9. Exit."
	puts
end

def process choice
	case choice
		when '1'
			find_average
		when '2'
			tellme_age_range
		when '3'
			count_ages
		when '9'
			puts "Goodbye"
			exit
		else
			'I\'m not sure what you meant, please type a number to choose from the menu.'
	end
end

def interactive_menu
	puts
	puts "June 2014 cohort, find out some more about our ages!"
	loop do
		print_menu
		process(gets.chomp)
	end
end

#call interactive_menu
interactive_menu