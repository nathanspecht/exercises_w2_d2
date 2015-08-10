require 'byebug'

class Student
  attr_accessor :first_name, :last_name, :courses

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @courses = []
  end

  def name
    "#{@first_name} #{@last_name}"
  end

  def enroll(course)
    raise "COURSE CONFLICT" if has_conflict?(course)

    if !@courses.include?(course)
      course.students << self
      @courses << course
    end
  end

  def course_load
    student_course_load = {}
    @courses.each do |course|
      student_course_load[course.department] ||= 0
      student_course_load[course.department] += course.credits
    end
    student_course_load
  end

  def has_conflict?(new_course)
    @courses.each { |course|
        return true if course.conflicts_with?(new_course) }
    false
  end

end
