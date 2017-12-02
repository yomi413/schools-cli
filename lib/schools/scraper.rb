class Schools::Scraper

	def get_page
		Nokogiri::HTML(open("https://insideschools.org/search/results?borough=bronx&district=8&neighborhood=&grade_level=ms&button="))
	end

end