require 'minitest/autorun' 
require_relative 'mined_minds_array.rb' 

class TestMMFunctions < Minitest::Test 

	def test_one_equals_one()
		assert_equal(1,1) 
	end

	def test_function_returns_array()
		results = create_mined_minds_array()
		assert_equal(Array, results.class)
	end

	def test_function_returns_100()
		results = create_mined_minds_array()
		assert_equal(100, results.length)
	end

	# first item in array is located at index 0
	# so 3 is located at index 2, 5 at 4, etc.
	def test_function_returns_mined()
		results = create_mined_minds_array()
		assert_equal('mined', results[2])
	end

	def test_function_returns_minds()
		results = create_mined_minds_array()
		assert_equal('minds', results[4])
	end

	def test_function_returns_mined_minds()
		results = create_mined_minds_array()
		assert_equal('mined minds', results[14])
	end

	# assigns array element starting at 0 to range then loops
	# checks if the element assigned to range is divisible by 3
	# if so asserts that it returns 'mined', if not the loop continues
	def test_function_divby3_mined()
		results = create_mined_minds_array()
		range = 0
		until range > 99 do
			if create_mined_minds_array[range] % 3 == 0
				assert_equal('mined', results[range])
			else
			end
			range = range + 1
		end
	end

end