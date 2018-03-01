require 'nama'

RSpec.describe Nama do
  describe Nama.new do
    it 'with valid object' do
      expect(subject.numbers).to include(1, 2, 3, 4, 'Nama')
    end
  end

  describe '#check' do
    it 'when multiples of 5' do
      expect(subject.check(5)).to eq('Nama')
    end

    it 'when multiples of 7' do
      expect(subject.check(7)).to eq('Team')
    end

    it 'when multiples of 35' do
      expect(subject.check(35)).to eq('Nama Team').or eq('Nama')
    end
  end
end
