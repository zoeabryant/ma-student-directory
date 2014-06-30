require 'directory'

describe "student directory" do 
	it 'prints header' do
		expect(self).to receive(:puts).with('Welcome to Student Directory')
		print_header
	end

	it 'has no students when we start' do
		expect(students).to be_empty
	end

	it 'ask for a new student' do
		expect(self).to receive(:puts).with('Please enter your name')
		ask_name
	end

	it 'gets new student input' do
		input = 'Zoe'
		expect(self).to receive(:gets).and_return(input)
		expect(get_name).to eq 'Zoe'
	end

	it 'can add a student' do
		student = {name: 'Zoe'}
		add(student)
		expect(students).to eq [student]
	end

	it 'prints footer' do
		expect(self).to receive(:puts).with("Overall, we have #{students.length} students.")
		print_footer
	end

	context 'with three students' do

		before do
			%w{Zoe Anna Catharina}.each do |name|
				add({name: name})
			end
		end

		it 'returns the names of the students' do
			expect(student_names).to eq %w{Zoe Anna Catharina}
		end

		it 'prints students' do
			expect(self).to receive(:puts).with(student_names.join(', '))
			print_students
		end

		it 'prints footer with right number of students' do
			expect(self).to receive(:puts).with("Overall, we have #{students.length} students.")
			print_footer
		end
	end

end
