#first we print the list of students
students = [
	{:name => "Dave", :cohort => :June, :hobby => "golf"},
	{:name => "Eddie", :cohort => :June, :hobby => "rock climbing"},
	{:name => "Catharina", :cohort => :June, :hobby => "travelling"},
	{:name => "Igor", :cohort => :June, :hobby => "making music"},
	{:name => "Marco", :cohort => :June, :hobby => "surfing"},
	{:name => "Lisa", :cohort => :June, :hobby => "swimming"},
	{:name => "Michiel", :cohort => :June, :hobby => "listening to music"},
	{:name => "Jean", :cohort => :June, :hobby => "movies"},
	{:name => "Nicola", :cohort => :June, :hobby => "running"},
	{:name => "Jennie", :cohort => :June, :hobby => "travelling"},
	{:name => "Iona", :cohort => :June, :hobby => "opera singing whilst boxing"},
	{:name => "Nikesh", :cohort => :June, :hobby => "loads of shit"},
	{:name => "Chloe", :cohort => :June, :hobby => "yoga"},
	{:name => "Toan", :cohort => :June, :hobby => "snowboarding"},
	{:name => "Jamie", :cohort => :June, :hobby => "football"},
	{:name => "Peter", :cohort => :June, :hobby => "cycling"},
	{:name => "Talal", :cohort => :June, :hobby => "swimming"},
	{:name => "Charlie", :cohort => :June, :hobby => "guitar"},
	{:name => "Charlotte", :cohort => :June, :hobby => "squash"},
	{:name => "Thomas", :cohort => :June, :hobby => "running"},
	{:name => "Zoe", :cohort => :June, :hobby => "origami"},
	{:name => "Hannah", :cohort => :June, :hobby => "mountaineering"},
	{:name => "Joe", :cohort => :June, :hobby => "dog walking"},
	{:name => "Alex", :cohort => :June, :hobby => "music"},
	{:name => "Jeremy", :cohort => :June, :hobby => "not being here"}
]

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "------------------"
end

def print(students)
	students.each do |student|
		puts "#{student[:name]} who likes #{student[:hobby]} in the #{student[:cohort]} cohort"
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

# nothing happens until we call the method!

print_header
print(students)
print_footer(students)