class Schools::CLI

	def call
		start
	end

	def list
		puts ""
		puts ""
		puts "******** List of Public Middle Schools in District 8 of Bronx, NY ********"
		puts ""
		Schools::Scraper.new.schools_list
		puts ""
	end

	def start
		list

		puts ""
		puts "What school would you like more information about, by number?"
		input = gets.strip

		puts ""
		puts "Would you like to see another school? (y/n)"

		input = gets.strip.downcase
		if input == "y"
			start
		else
			puts ""
			puts "Goodbye! Please come again."
		end
	end

end