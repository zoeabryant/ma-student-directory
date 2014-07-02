require 'directory'
require 'csv'

describe 'Student Directory' do
	let (:student) {'Zoe'}

	context 'on startup' do
		it 'knows there are no students' do
			expect(students).to be_empty
		end
		it 'prints the welcome message' do
			expect(self).to receive(:puts).with('Welcome to our Student Directory')
			print_welcome
		end
		it 'asks for the first name' do
			expect(self).to receive(:gets).and_return(student)
			expect(get_name).to eq student
		end
	end
	context 'deals with the inputted student' do
	  # xit 'capitalizes the first letter of the name' do
	  # 	expect(:name.regex \^*)
	  # end
		it 'puts the student into the array' do
			add_student(student)
			expect(students).to eq [student]
		end

		it 'saves the student to our file' do
			dummy = double
			expect(dummy).to receive(:<<).with(student)
			expect(CSV).to receive(:open).with('./students.csv', 'wb').and_yield(dummy)
			students_to_csv(student)
		end
	end
end