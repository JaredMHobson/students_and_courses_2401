class Student
  attr_reader :name, :age

  def initialize(student_info)
    @name = student_info[:name]
    @age = student_info[:age]
  end
end