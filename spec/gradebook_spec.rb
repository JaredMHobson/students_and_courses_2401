require 'rspec'
require './lib/gradebook'
require './lib/student'
require './lib/course'

RSpec.describe Gradebook do
  let (:course1) { Course.new('Calculus', 2) }
  let (:course2) { Course.new('Programming', 2) }
  let (:student1) { Student.new({name: "Morgan", age: 21}) }
  let (:student2) { Student.new({name: "Jordan", age: 29}) }
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
end