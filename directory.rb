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
puts "The students of my cohort at Makers Academy"
puts "------------------"
students.each do |student|
	puts student
end
#finally, we print the total
puts "We have #{students.length} great students"
