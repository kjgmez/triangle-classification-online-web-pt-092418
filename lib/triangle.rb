class Triangle
  attr_accessor :side1, :side2, :side3
  def initialize(one,two,three)
    @side1=one
    @side2=two
    @side3=three
  end
  def kind
  elsif side1 == side2 && side2 == side3
      :equilateral
    elsif side1 != side3 && side2 == side3 || side1 == side3 && side2 != side3 || side1 == side2 && side2 != side3
      :isosceles
    elsif side1 != side2 && side2 != side3
      :scalene
    elsif side1.length == 0 && side3.length == 0 && side3.length == 0
        raise TriangleError
    end
  end

  class TriangleError < StandardError
    # def message
    #   "Enter the values of a valid triangel"
    # end
  end
end
