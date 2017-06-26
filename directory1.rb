def input_students #Creating a method to take users input
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
#cerate and empty array
cohorts = [:January, :February, :March, :April, :May, :June, :July, :August, :September, :October, :November, :December]
students = []
#get the first name
name = gets.gsub(/\n/,"")
cohort = nil
#while name isn't empty, repeat the above code
while !name.empty? do
   until cohorts.include? cohort do
      default_cohort = :July
       puts "...is in which cohort?"
      cohort = gets.gsub(/\n/,"").capitalize.to_sym
       cohort ||= default_cohort
       puts "Please check your spelling and try again." if !cohorts.include? cohort
     end
 
     students << {name: name, cohort: cohort}
     cohort = nil
	#add the student hash to the array
	#students << {name: name, cohort: :november}
	if students.count ==1
	puts "Now we have #{students.count} student"
else
		puts "Now we have #{students.count} students"
end
	puts "Add next student or press return to finish:"
	#get another name from the user
	name = gets.gsub(/\n/,"")
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
puts "The Students of Villains Academy".center(50)
puts "_________________".center(50)
end

def print(students)
students.each.with_index(1) do |student, i|
	puts "#{i}. #{student[:name]} (#{student[:cohort]} cohort)".center(50)
end
end

def print_footer(names)
	if names.count == 1
puts "Overall, we have #{names.count} great student"
else
	puts "Overall, we have #{names.count} great students"
end
end

students = input_students
print_header
print(students)
print_footer(students)