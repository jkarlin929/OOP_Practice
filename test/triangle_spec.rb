require_relative '../src/triangle'

describe Triangle do
  let(:tri) { Triangle.new(3, 4, 5) }

  it 'is a class that inherits from Shape' do
    expect(Triangle).to be_a(Class)
    expect(Triangle.superclass).to eq(Shape)
  end

  describe '#side_lengths' do
    it 'is the length of every side' do
      expect(tri.side_lengths).to match_array([3, 4, 5])
    end
  end

  describe '#perimeter' do
    it 'is the sum of every side' do
      # 3 + 4 + 5
      expect(tri.perimeter).to eq(12)
    end
  end

  describe '#area' do
    it 'is the area of triangle' do
      # formula given
      expect(tri.area).to eq(6)
    end
  end

  # :: is the notation for a class method
  describe '::heron_formula' do
    it 'gives the area of a triangle given 3 side lengths' do
      expect(Triangle.heron_formula(5, 12, 13)).to eq(30)
    end
  end
end
