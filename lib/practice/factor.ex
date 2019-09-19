defmodule Practice.Factor do
	def factor(num) do
		#num = parse_int(text)
        helper([], 2, num)	
	end

	defp helper(list, a, max) do
		cond do
			a >= max -> [a | list]
			a < max && rem(max, a) == 0 -> [a| helper(list, a, div(max, a))]
			a < max && rem(max, a) != 0 -> helper(list, a + 1, max)
		end
	end
	


end