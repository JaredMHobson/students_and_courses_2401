require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Course do
  let (:course) { Course.new('Calculus', 2) }

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
end