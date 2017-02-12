class Triangle
  attr_accessor :side_len_1, :side_len_2, :side_len_3


	def initialize(side_len_1, side_len_2, side_len_3)
		if(side_len_1 >= side_len_2 + side_len_3 || side_len_2 >= side_len_1 + side_len_3 || side_len_3 >= side_len_2 + side_len_1||side_len_1<=0||side_len_2<=0||side_len_3<=0)
			raise TriangleError
		end
		@side_len_1 = side_len_1
		@side_len_2 = side_len_2
		@side_len_3 = side_len_3
	end

	def kind
		if(@side_len_1==@side_len_2&&@side_len_2==@side_len_3)
			:equilateral
		elsif(@side_len_1!=@side_len_2&&@side_len_2!=@side_len_3&&@side_len_1!=@side_len_3)
			:scalene
		else
			:isosceles
		end
	end
end

class TriangleError < StandardError

end
