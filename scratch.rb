student = ["Jill", "Jack"]
teacher = ["Emerett"]
mainDirectory = []
role = ""
answer = ""

puts "Please enter the name of the person you wish to add to the directory: "

name = STDIN.gets.chop!

loop do

  puts "You entered #{name}. Are they a student or a teacher? (student/teacher) "

  role = STDIN.gets.chop!

  break if role == "student" || role == "teacher"

end

loop do

  puts "Very well, would you like to add #{name} to the #{role} directory? (y/n) "

  answer = STDIN.gets.chop!

  break if answer == "y" || answer == "n"

end

if answer == "y" then

    case role

    when "student"
      student.push[name]
    
    when "teacher"
      teacher << name
    end

  else
    puts "Alright, have a great day!"

end

print "Students: "
puts student.inspect
print "Teachers: "
puts teacher.inspect

mainDirectory = student + teacher

print "People in the class: "
puts mainDirectory.inspect