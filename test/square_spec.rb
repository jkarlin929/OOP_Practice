require_relative '../src/square'

describe Square do
  let(:rect) { Square.new(6) }

  it 'is a class that inherits from Rectangle' do
    expect(Square).to be_a(Class)
    expect(Square.superclass).to eq(Rectangle)
  end

  it 'is constructed with just one side_length' do
    expect(rect.width).to eq(6)
    expect(rect.height).to eq(6)
  end

  describe '#side_lengths' do
    it 'is the length of every side' do
      expect(rect.side_lengths).to match_array([6, 6, 6, 6])
    end
  end

  describe '#perimeter' do
    it 'is the sum of every side' do
      # 6 * 4
      expect(rect.perimeter).to eq(24)
    end
  end

  describe '#area' do
    it 'is the width times height' do
      expect(rect.area).to eq(36)
    end
  end
end
