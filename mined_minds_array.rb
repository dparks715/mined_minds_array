def create_mined_minds_array()
	 #create empty array
	mined_minds_array = []

	num =1

	# put 1-100 into array, replacing numbers that meet conditionals
	100.times do
		if num % 5 == 0 && num % 3 == 0
			mined_minds_array << 'mined minds'

		elsif num % 5 == 0
			mined_minds_array << 'minds'

		elsif num % 3 == 0
			mined_minds_array << 'mined'

		else
			mined_minds_array << num

		end

		num = num +1
			
	end

	mined_minds_array
end