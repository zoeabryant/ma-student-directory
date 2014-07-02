require 'directory'
require 'csv'

describe 'Student Directory' do
	let (:test_students) { {name: 'Zoe', cohort: 'June'} }

	context 'on startup' do
		it 'knows there are no students' do
			expect(students).to be_empty
		end
		it 'prints the welcome message' do
			expect(self).to receive(:puts).with('Welcome to our Student Directory')
			print_welcome
		end
		it 'asks for the student\'s first name' do
			expect(self).to receive(:puts).with('Please enter a name')
			expect(self).to receive(:gets).and_return(test_students[:name])
			expect(get_name).to eq test_students[:name]
		end
		it 'asks for the student\'s cohort' do
			expect(self).to receive(:puts).with("Please enter #{test_students[:name]}'s cohort")
			expect(self).to receive(:gets).and_return(test_students[:cohort])
			expect(get_cohort).to eq test_students[:cohort]
		end
	end
	context 'formats the inputted student' do
	  # xit 'capitalizes the first letter of the name' do
	  # 	expect(:name.regex \^*)
	  # end
		it 'puts the student into the array' do
			add_student(test_students)
			expect(students).to eq [test_students]
		end

		it 'saves the student to our file' do
			dummy = double
			expect(dummy).to receive(:<<).with(test_students)
			expect(CSV).to receive(:open).with('./students.csv', 'wb').and_yield(dummy)
			students_to_csv(test_students)
		end
	end

	context 'it summarises student information' do
		before do
			add_student([test_students])
		end

		it 'can print a student on the screen' do
			expect(self).to receive(:puts).with(test_students)
			print_students
		end

		it 'prints the footer with the amount of students in our directory' do
			expect(self).to receive(:puts).with("We now have #{test_students.length} in our TDD directory")
			print_footer
		end
	end

	context 'it can handle multiple students' do
		let (:test_students) { [{name: 'One', cohort: 'October'}, {name: 'Two', cohort: 'May'}, {name: 'Three', cohort: 'Jan'}] }

		before do
			add_student([test_students])
		end

		it 'prints the list of students on the screen' do
			expect(self).to receive(:puts).with(test_students)
			print_students
		end
	end
end