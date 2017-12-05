require "pry"

class Schools::Scraper

	def get_page
		Nokogiri::HTML(open("https://insideschools.org/search/results?borough=bronx&district=8&neighborhood=&grade_level=ms&button="))
		
	end

	def scrape_for_schools
		get_page.css("div.result")
	end

	def make_schools
		self.scrape_for_schools.each do |school|
			Schools::MiddleSchools.new_from_index_page(school)
		end
	end

	def schools_list
		schools_list = self.get_page.css("div.result-info a.result-name").text.split("\n")
		schools_list.each.with_index(1) do |school, i|
			puts "#{i}.	#{school}"
		end
	end

end