require_relative '../src/r_triangle'

describe RTriangle do
  let(:tri) { RTriangle.new(3, 4) }

  it 'is a class that inherits from Triangle' do
    expect(RTriangle).to be_a(Class)
    expect(RTriangle.superclass).to eq(Triangle)
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

  describe '#legs' do
    it 'is the legs of the triangle' do
      # formula given
      expect(tri.legs).to match_array([3, 4])
    end
  end

  describe '#hypotenuse' do
    it 'is the hypotenuse of the triangle' do
      expect(tri.hypotenuse).to eq(5)
    end
  end

  # :: is the notation for a class method
  describe '::hypotenuse' do
    it 'gives the hypotenuse of a triangle with legs as arguments' do
      expect(RTriangle.hypotenuse(5, 12)).to eq(13)
    end
  end
end
