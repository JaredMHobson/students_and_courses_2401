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
end