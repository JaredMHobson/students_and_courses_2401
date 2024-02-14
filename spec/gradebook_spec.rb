require 'rspec'
require './lib/gradebook'
require './lib/student'
require './lib/course'

RSpec.describe Gradebook do
  let (:course1) { Course.new('Calculus', 2) }
  let (:course2) { Course.new('Programming', 2) }
  let (:student1) { Student.new({name: 'Morgan', age: 21}) }
  let (:student2) { Student.new({name: 'Jordan', age: 29}) }
  let (:student3) { Student.new({name: 'Jared', age: 31}) }
  let (:book) { Gradebook.new('Kat') }

  it 'exists' do
    expect(book).to be_instance_of(Gradebook)
  end

  describe '#instructor' do
    it 'has an instructor' do
      expect(book.instructor).to eq('Kat')
    end
  end

  describe '#courses' do
    it 'has no courses by default' do
      expect(book.courses).to eq([])
    end
  end

  describe '#add_course' do
    it 'can push courses to the courses array' do
      book.add_course(course1)
      book.add_course(course2)

      expect(book.courses).to eq([course1, course2])
    end
  end

  describe '#list_all_students' do
    it 'can list all students in its courses' do
      book.add_course(course1)
      book.add_course(course2)

      course1.enroll(student1)
      course2.enroll(student2)
      course2.enroll(student3)

      expect(book.list_all_students).to eq({course1 => [student1], course2 => [student2, student3]})
    end
  end

  describe '#students_below' do
    it 'can list all students below a certain threshold' do
      book.add_course(course1)
      book.add_course(course2)

      course1.enroll(student1)
      course2.enroll(student2)
      course2.enroll(student3)

      student1.log_score(95)
      student1.log_score(98)
      student2.log_score(13)
      student2.log_score(12)
      student3.log_score(50)
      student3.log_score(60)

      expect(student1.grade).to eq(96.5)
      expect(student2.grade).to eq(12.5)
      expect(student3.grade).to eq(55.0)

      expect(students_below(50)).to eq([student2])

      expect(students_below(95)).to eq([student2, student3])
    end
  end
end