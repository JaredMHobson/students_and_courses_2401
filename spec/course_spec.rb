require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Course do
  let (:course) { Course.new("Calculus", 2) }

  it 'exists' do
    expect(course).to be_instance_of(Course)
  end
end