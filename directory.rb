#first we print the list of students
# students = [
# 	{:name => "Dave", :cohort => :June, :hobby => "golf"},
# 	{:name => "Eddie", :cohort => :June, :hobby => "rock climbing"},
# 	{:name => "Catharina", :cohort => :June, :hobby => "travelling"},
# 	{:name => "Igor", :cohort => :June, :hobby => "making music"},
# 	{:name => "Marco", :cohort => :June, :hobby => "surfing"},
# 	{:name => "Lisa", :cohort => :June, :hobby => "swimming"},
# 	{:name => "Michiel", :cohort => :June, :hobby => "listening to music"},
# 	{:name => "Jean", :cohort => :June, :hobby => "movies"},
# 	{:name => "Nicola", :cohort => :June, :hobby => "running"},
# 	{:name => "Jennie", :cohort => :June, :hobby => "travelling"},
# 	{:name => "Iona", :cohort => :June, :hobby => "opera singing whilst boxing"},
# 	{:name => "Nikesh", :cohort => :June, :hobby => "loads of shit"},
# 	{:name => "Chloe", :cohort => :June, :hobby => "yoga"},
# 	{:name => "Toan", :cohort => :June, :hobby => "snowboarding"},
# 	{:name => "Jamie", :cohort => :June, :hobby => "football"},
# 	{:name => "Peter", :cohort => :June, :hobby => "cycling"},
# 	{:name => "Talal", :cohort => :June, :hobby => "swimming"},
# 	{:name => "Charlie", :cohort => :June, :hobby => "guitar"},
# 	{:name => "Charlotte", :cohort => :June, :hobby => "squash"},
# 	{:name => "Thomas", :cohort => :June, :hobby => "running"},
# 	{:name => "Zoe", :cohort => :June, :hobby => "origami"},
# 	{:name => "Hannah", :cohort => :June, :hobby => "mountaineering"},
# 	{:name => "Joe", :cohort => :June, :hobby => "dog walking"},
# 	{:name => "Alex", :cohort => :June, :hobby => "music"},
# 	{:name => "Jeremy", :cohort => :June, :hobby => "not being here"}
# ]
def input_students
	puts "Please enter the names of students followed by their hobby"
	puts "to finish, just hit return twice"
	# create an empty array
	students = []

	# get the first name
	puts 'Please enter a name first'
	name = gets.chomp.capitalize
	puts 'And now a hobby'
	hobby = gets.chomp
	
	# while the name is not empty, repeat this code
	while !name.empty? && !hobby.empty? do
		# add the student hash to the array
		students << {:name => name, :hobby => hobby, :cohort => :june}
		puts "now we have #{students.length} students"

		# get another name from the user
		puts 'Please enter a name first'
		name = gets.chomp.capitalize
		puts 'And now a hobby'
		hobby = gets.chomp
	end
	#return the array of students
	students
end

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "------------------"
end

def print(students)
	# students.each_with_index do |student, index|
		# number = index + 1
		# if student[:name].length <= 12
		# 	puts "#{number}. #{student[:name]} in the #{student[:cohort]} cohort likes #{student[:hobby]}"
		# end
		# if student[:name].index('A') == 0
		# 	puts "#{number}. #{student[:name]} in the #{student[:cohort]} cohort likes #{student[:hobby]}"
		# end
	# end

	count = 0
	max = students.length
	while count < max do
		number = count + 1
		puts number.to_s + ". #{students[count][:name]} in the #{students[count][:cohort]} cohort likes #{students[count][:hobby]}"
		count += 1
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end



# nothing happens until we call the method!
students = input_students
print_header
print(students)
print_footer(students)
