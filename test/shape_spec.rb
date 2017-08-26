require_relative '../src/shape'

describe Shape do
  let(:shape) { Shape.new([2, 3, 3, 4, 5]) }

  it 'is a class' do
    expect(Shape).to be_a(Class)
  end

  describe '#side_lengths' do
    it 'is the length of every side' do
      expect(shape.side_lengths).to match_array([2, 3, 3, 4, 5])
    end
  end

  describe '#perimeter' do
    it 'is the sum of every side' do
      # 2 + 3 + 3 + 4 + 5
      expect(shape.perimeter).to eq(17)
    end
  end
end
