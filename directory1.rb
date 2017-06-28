@students = []

def print_menu
	    # 1. print the menu and ask the user what to do
puts "______________".center(50)
puts "1. Input the students".center(50)
puts "2. Show the students".center(50)
puts "3. Save the list to students.csv".center(50)
puts "9. Exit".center(50)
puts "______________".center(50)
end

def process(selection)
case selection
when "1"
	input_students
when "2"
	show_students
when "3"
	save_students
when "9"
	exit
else
	puts "I don't know what you mean, please try again"
	end
end



def interactive_menu
  loop do
  	print_menu
  	process(gets.chomp)
  end
end

def show_students
	print_header
	print_students
	print_footer
end

def save_students
	#open the file for writing
	file = File.open("students.csv", "w")
	#iterate over the array of students
	@students.each do |student|
		student_data = [student[:name], student[:cohort]]
		csv_line = student_data.join(",")
		file.puts csv_line
	end
	file.close
end


    # 2. read the input and save it into a variable

    # 3. do what the user has asked


def input_students #Creating a method to take users input
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
#create empty array
cohorts = [:January, :February, :March, :April, :May, :June, :July, :August, :September, :October, :November, :December]
@students = []
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
 
     @students << {name: name, cohort: cohort}
     cohort = nil
	#add the student hash to the array
	#students << {name: name, cohort: :november}
	if @students.count ==1
	puts "Now we have #{@students.count} student"
else
		puts "Now we have #{@students.count} students"
end
	puts "Add next student or press return to finish:"
	#get another name from the user
	name = gets.gsub(/\n/,"")
end
#return the array of students

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

def print_students
@students.each.with_index(1) do |student, i|
	
	puts "#{i}. #{student[:name]}, #{student[:cohort]}".center(50)


end
end


def print_footer
	if @students.count == 1
puts "Overall, we have #{@students.count} great student".center(50)
else
	puts "Overall, we have #{@students.count} great students".center(50)
end
end



interactive_menu
#students = input_students
#if students.count >= 1
#print_header
#print(students)
#print_footer(students)
#else puts "The student directory is empty"
#end