def print_header
	puts 'Welcome to Student Directory'	
end

def print_students
	puts 'Zoe, Anna, Catharina'
end

def students
	#[{name:'Zoe'}, {name:'Anna'}, {name:'Catharina'}]
	@students ||= []
end

def student_names
	students.map{|student| student[:name]}
end

def add(student)
	students << student
end

def ask_name 
	puts 'Please enter your name'	
end

def get_name
	gets.chomp
end

	def print_footer
	puts "Overall, we have #{students.length} students."
end
