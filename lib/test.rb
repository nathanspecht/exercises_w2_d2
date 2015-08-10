require_relative 'course'
require_relative 'student'

course1 = Course.new("Ruby 101", "CS", 4, [:mon, :tue, :wed], 1)
course2 = Course.new("Python", "CS", 4, [:wed, :thurs, :fri], 1)
course3 = Course.new("Drama", "Theatre", 2, [:mon, :wed, :fri], 5)

student = Student.new("Johnny", "Rocket")

student.enroll(course1)

student.enroll(course2)
