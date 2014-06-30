require 'directory'

describe 'Student Directory' do
	context 'It recieves student information' do
		it 'can take user input' do
			expect(self).to receive(:gets).and_return('')
		end
		it 'removes the new line when getting user input' do
			input = "hello\n"
			expect(self).to receive(:gets).and_return(input)
			expect(take_user_input).to eq 'hello'
		end
	end
	it 'prints a string to the terminal' do
		expect(self).to receive(:puts).with('O HAI')
		show('O HAI')
	end
	it 'prints the header' do
		header = "Welcome"
		expect(self).to receive(:show).with(header)
		print_header
	end
end