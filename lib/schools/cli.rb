class Schools::CLI

	def call
		list
	end

	def list
		puts ""
		puts ""
		puts "******** List of Public Middle Schools in District 8 of Bronx, NY ********"
		puts ""
		Schools::Scraper.new.schools_list
		puts ""
		puts ""
		puts "What school would you like more information about, by number?"
		puts ""
	end

	# def start
	# 	list
	# end

end