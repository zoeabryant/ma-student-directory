def students
	@students ||= []
end

def print_welcome
	puts 'Welcome to our Student Directory'
end

def get_name
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