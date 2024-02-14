class Gradebook
  attr_reader :instructor, :courses

  def initialize(instructor)
    @instructor = instructor
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def list_all_students
    all_students = {}
    @courses.each do |course|
      all_students[course] = course.students
    end
    all_students
  end

  def students_below(threshold)
    all_students = []
    list_all_students.each do |course, students|
      all_students << students
    end
    all_students.flatten.select do |student|
      student.grade < threshold
    end
  end
end