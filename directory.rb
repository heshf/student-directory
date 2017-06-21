
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
def print_header
puts "The Students of Villains Academy"
puts "_____________"
end

def print(names)
names.each do |name|
	puts name
end
end

def print_footer(names)
puts "Overall, we have #{names.count} great students"
end

print_header
print(students)
print_footer(students)
