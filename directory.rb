#first we print the list of students
students = [
	"Dave - golf",
	"Eddie - rock climbing",
	"Catharina - travelling",
	"Igor - making music",
	"Marco - surfing",
	"Lisa - swimming",
	"Michiel - listening to music",
	"Jean - movies",
	"Nicola - running",
	"Jennie - travelling",
	"Iona - opera singing whilst boxing",
	"Nikesh - loads of shit",
	"Chloe - yoga",
	"Toan - snowboarding",
	"Jamie - football",
	"Peter - cycling",
	"Talal - swimming",
	"Charlie - guitar",
	"Charlotte - squash",
	"Thomas - running",
	"Zoe - origami",
	"Hannah - mountaineering",
	"Joe - dog walking",
	"Alex - music",
	"Jeremy - not being here"
]

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "------------------"
end

def prints(names)
	names.each do |name|
		puts name
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

# nothing happens until we call the method!

print_header
prints(students)
print_footer(students)