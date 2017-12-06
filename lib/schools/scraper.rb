require "pry"

class Schools::Scraper

	def get_pages
		page_1 = Nokogiri::HTML(open("https://insideschools.org/search/results?borough=bronx&district=8&neighborhood=&grade_level=ms&button="))
		page_2 = Nokogiri::HTML(open("https://insideschools.org/search/results/page/2?borough=bronx&button=&district=8&grade_level=ms&neighborhood="))
		[page_1, page_2]
	end

	def scrape_for_schools
		schools = []

		get_pages.each do |page|
			results = page.css("div.result")
			results.each do |school|
				schools << school
			end
		end
		schools
	end

	def make_schools
		self.scrape_for_schools.each do |school|
			Schools::MiddleSchools.new_from_index_page(school)
		end
	end

	def schools_list
		index = 0
		self.get_pages.each do |page|
			schools_list = page.css("div.result-info a.result-name").text.split("\n")
			schools_list.each.with_index(index+1) do |school, i|
				index = i
				puts "#{i}.	#{school}"
			end
		end
	end

end