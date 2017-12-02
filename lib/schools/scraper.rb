class Schools::Scraper

	def get_page
		doc = Nokogiri::HTML(open("https://insideschools.org/search/results?borough=bronx&district=8&neighborhood=&grade_level=ms&button="))
		binding.pry
	end

	def scrape_for_schools
		self.get_page.css("div.result")
	end

	def schools_list
		self.scrape_for_schools.each.with_index(1) do |school, i|
			puts "#{i}.	#{school}"
		end
	end

end