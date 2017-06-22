def input_students #Creating a method to take users input
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
#cerate and empty array
students = []
#get the first name
name = gets.chomp
#while name isn't empty, repeat the above code
while !name.empty? do
	#add the student hash to the array
	students << {name: name, cohort: :november}
	puts "Now we have #{students.count} students"
	#get another name from the user
	name = gets.chomp
end
#return the array of students
students
end

#put all students in an array
=begin students = [
{name: "Dr. Hannibal Lecter", cohort: :november},
{name: "Darth Vader", cohort: :november},
{name: "Nurse Ratched", cohort: :november},
{name: "Michael Corelone", cohort: :november},
{name: "Alex DeLarge", cohort: :november},
{name: "The Wicked Witch of the West", cohort: :november},
{name: "The Terminator", cohort: :november},
{name: "Freddie Krueger", cohort: :november},
{name: "The Joker", cohort: :november},
{name: "Joffery Baratheon", cohort: :november},
{name: "Norman Bates", cohort: :november},
] 
=end

#and then print them
def print_header
puts "The Students of Villains Academy"
puts "_____________"
end

def print(students)
students.each do |student|
	puts "#{student[:name]} (#{student[:cohort]} cohort)"
end
end

def print_footer(names)
puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
