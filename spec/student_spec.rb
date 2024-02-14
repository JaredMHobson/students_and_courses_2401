require 'rspec'
require './lib/student'

RSpec.describe Student do
  it "exists" do
    morgan = Student.new({name: "Morgan", age: 21})
    expect(morgan).to be_instance_of(Student)
  end

  describe '#name' do
    it 'has a name' do
      morgan = Student.new({name: "Morgan", age: 21})
      expect(morgan.name).to eq('Morgan')
    end
  end

  describe '#age' do
    it 'has an age' do
      morgan = Student.new({name: "Morgan", age: 21})
      expect(morgan.age).to eq(21)
    end
  end

  describe '#scores' do
    it 'has no scores by default' do
      morgan = Student.new({name: "Morgan", age: 21})
      expect(morgan.scores).to eq([])
    end
  end
end