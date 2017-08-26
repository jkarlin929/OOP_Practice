require_relative '../src/rectangle'

describe Rectangle do
  let(:rect) { Rectangle.new(5, 7) }

  it 'is a class that inherits from Shape' do
    expect(Rectangle).to be_a(Class)
    expect(Rectangle.superclass).to eq(Shape)
  end

  it 'is constructed with a width and height' do
    expect(rect.width).to eq(5)
    expect(rect.height).to eq(7)
  end

  describe '#side_lengths' do
    it 'is the length of every side' do
      expect(rect.side_lengths).to match_array([5, 5, 7, 7])
    end
  end

  describe '#perimeter' do
    it 'is the sum of every side' do
      # 5 + 5 + 7 + 7
      expect(rect.perimeter).to eq(24)
    end
  end

  describe '#area' do
    it 'is the width times height' do
      expect(rect.area).to eq(35)
    end
  end
end
