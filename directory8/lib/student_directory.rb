def students
	@students ||= []
end

def print_welcome
	puts "Welcome to Makers Academy students directory"
end

def print_menu
	puts 'Please select option from the menu'
	puts '1. Input the students'
	puts "2. Show the students"
	puts "3. Save the list to students.csv"
	puts "4. Load the list from students.csv"
	puts "9. Exit"
	puts "--------------------"
	
end

def ask_for_user_input
	gets.chomp
end

def process(selection)
	case selection
		when '1'
			input_students
		when '2'
			show_students
		when '3'
			save_students
		when '4'
			load_students
		when '9'
			exit
		else
			puts "Not a valid menu option please try again!"
	end
end

def run
	loop do
	  break if process.nil?
	  print_menu
	end
end

def input_students
	puts "Please enter a name"
	gets.chomp
end

def check_name(user_input)
	puts 'Invalid name. Please enter a name'
end

def ask_cohort
	puts "Please enter a cohort"
	gets.chomp
end

def add_student(inputted_student)
	students << inputted_student
end

def show_students
	# puts students
	students.each do |student|
		puts "#{student[:name]} in the #{student[:cohort]} cohort"
	end
end

def save_students
	
end

def load_students

end

