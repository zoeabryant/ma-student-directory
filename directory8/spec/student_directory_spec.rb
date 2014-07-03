require 'student_directory'

describe 'student directory' do
	let(:sarah)   { {name: 'Sarah', cohort: 'June'}      }
	let(:edward)  { {name: 'Edward', cohort: 'November'} }
	let(:anna)    { {name: 'Anna', cohort: 'June'}       }

		context 'on start up' do
			it 'has no students in it\'s array' do
				expect(students).to be_empty
			end

			it 'displays a welcome message' do
				expect(self).to receive(:puts).with("Welcome to Makers Academy students directory")
				print_welcome
			end

		end

		context 'it has a functioning menu' do
				it 'displays our menu' do
					menu = [
						'Please select option from the menu',
						'1. Input the students',
						"2. Show the students",
						"3. Save the list to students.csv",
						"4. Load the list from students.csv",
						"9. Exit",
						"--------------------"
						]
						menu.each { |line| expect(self).to receive(:puts).with(line)}

						print_menu
				end

				it 'asks for menu input' do
					allow(self).to receive(:gets).and_return('1')
					ask_for_user_input
				end

				it 'that shows the menu again after selection' do
		      expect(self).to receive(:process).and_return('').ordered
		      expect(self).to receive(:print_menu).ordered
		      expect(self).to receive(:process).and_return('').ordered
		      expect(self).to receive(:print_menu).ordered
		      expect(self).to receive(:process).and_return(nil).ordered
		      run
				end

		end

		context 'it knows what to do when the menu input is' do
			it '1' do
				expect(self).to receive(:input_students)
				process('1')
			end

			it '2' do
				expect(self).to receive(:show_students)
				process('2')
			end

			it '3' do
				expect(self).to receive(:save_students)
				process('3')
			end

			it '4' do
				expect(self).to receive(:load_students)
				process('4')
			end

			it '9' do
				expect(self).to receive(:exit)
				process('9')
			end

			it 'that knows to check if it\'s a valid menu option' do
				expect(self).to receive(:puts).with("Not a valid menu option please try again!")
				process('22')
			end

		end

		context 'can input students' do

			it 'asks for students first name' do
				expect(self).to receive(:puts).with("Please enter a name")
				expect(self).to receive(:gets).and_return(sarah[:name])
				input_students
			end

			it 'if they haven\'t put a first name, flag error' do
				expect(self).to receive(:puts).with("Invalid name. Please enter a name")
				check_name('')
			end

			it 'if they have put a first name, ask for cohort' do
				expect(self).to receive(:puts).with("Please enter a cohort")
				expect(self).to receive(:gets).and_return(sarah[:cohort])
				ask_cohort
			end

			it 'can put the new student into our directory' do
				add_student(sarah)
				expect(students).to eq [sarah]
			end

		end

		context 'can show students' do

			before do
				add_student(sarah)
			end

			it 'can show a student' do
				expect(self).to receive(:puts).with("#{sarah[:name]} in the #{sarah[:cohort]} cohort")
				show_students
			end

			it 'can show multiple students' do
				add_student(edward)
				add_student(anna)

				expect(self).to receive(:puts).with("#{sarah[:name]} in the #{sarah[:cohort]} cohort")
				expect(self).to receive(:puts).with("#{edward[:name]} in the #{edward[:cohort]} cohort")
				expect(self).to receive(:puts).with("#{anna[:name]} in the #{anna[:cohort]} cohort")
				show_students
			end
		end

		

		

end	