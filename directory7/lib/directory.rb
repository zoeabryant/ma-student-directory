def students
	@students ||= []
end

def print_welcome
	puts 'Welcome to our Student Directory'
end

def get_name
	puts 'Please enter a name'
	gets.chomp
end

def add_student(student)
	students << student
end

def students_to_csv(students)
	CSV.open('./students.csv', 'wb') do |csv|
		csv << students
	end
end

def get_cohort
	puts "Please enter #{test_students[:name]}'s cohort"
	gets.chomp
end

def print_students
	puts test_students
end

def print_footer
	puts "We now have #{test_students.length} in our TDD directory"
end