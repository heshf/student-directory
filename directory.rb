
#put all students in an array
students = [
"Dr. Hannibal Lecter",
 "Darth Vader",
 "Nurse Ratched",
 "Michael Corelone",
 "Alex DeLarge",
 "The Wicked Witch of the West",
 "The Terminator",
 "Freddie Krueger",
 "The Joker",
 "Joffery Baratheon",
"Norman Bates",
]

#and then print them

puts "The Students of Villains Academy"
puts "_____________"
students.each do |student|
	puts student
end
#finally, print total number of students
puts "Overall, we have #{students.count} great students"
