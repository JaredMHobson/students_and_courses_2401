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

  describe '#log_scores' do
    it 'can log scores and push them to the scores array' do
      morgan = Student.new({name: "Morgan", age: 21})
      
      morgan.log_score(89)
      morgan.log_score(78)

      expect(morgan.scores).to eq([89, 78])
    end
  end

  describe '#grade' do
    it 'can find the average of all its score and return its grade' do
      morgan = Student.new({name: "Morgan", age: 21})
      
      morgan.log_score(89)
      morgan.log_score(78)

      expect(morgan.grade).to eq(83.5)
    end
  end
end