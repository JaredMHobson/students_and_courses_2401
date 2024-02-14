require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Course do
  let (:course) { Course.new('Calculus', 2) }
  let (:student1) { Student.new({name: "Morgan", age: 21}) }
  let (:student2) { Student.new({name: "Jordan", age: 29}) }

  it 'exists' do
    expect(course).to be_instance_of(Course)
  end

  describe '#name' do 
    it 'has a name' do
      expect(course.name).to eq('Calculus')
    end
  end

  describe '#capcity' do
    it 'has a capacity' do
      expect(course.capacity).to eq(2)
    end
  end

  describe '#students' do
    it 'has no students by default' do
      expect(course.students).to eq([])
    end
  end

  describe '#full?' do
    it 'can return if it is full or not' do
      expect(course.full?).to be false

      course.enroll(student1)
      course.enroll(student2)

      expect(course.full?).to be true
    end
  end
end