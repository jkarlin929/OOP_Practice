require_relative '../src/e_triangle'

describe ETriangle do
  let(:tri) { ETriangle.new(3) }

  it 'is a class that inherits from Shape' do
    expect(ETriangle).to be_a(Class)
    expect(ETriangle.superclass).to eq(Triangle)
  end

  describe '#side_lengths' do
    it 'is the length of every side' do
      expect(tri.side_lengths).to match_array([3, 3, 3])
    end
  end

  describe '#perimeter' do
    it 'is the sum of every side' do
      # 3 + 3 + 3
      expect(tri.perimeter).to eq(9)
    end
  end

  describe '#area' do
    it 'is the area of triangle' do
      # formula given (area of this triangle is ugly number)
      expect(tri.area).to be_between(3.8, 3.9)
    end
  end
end
