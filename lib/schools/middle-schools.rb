class Schools::MiddleSchools
	attr_accessor :name, :url, :grades 

	@@all = []

	def self.new_from_index_page(school)
		self.new(
			school.css("div.result-info a.result-name").text.strip,
			"https://insideschools.org#{school.css("a").attribute("href").text}",
			school.css("div.result-grades").text.strip
			)
	end

	def initialize(name=nil, url=nil, grades=nil)
		@name = name
		@url = url
		@grades = grades
		@@all << self
	end

	def self.all
		@@all
	end

	def self.find(id)
		self.all[id-1]
	end

	def location
		@location ||= doc.search("div.location-address").first.text.strip.split("\n\n\n\n").join(", ").gsub("\n\n\n", ", ")
	end

	def telephone
		@telephone ||= doc.search("div.contact-point").text.strip
	end

	def school_website
		school_website = doc.search("div.school-website a")
		if school_website.empty?
			"Not available"
		else
			school_website.attribute("href").value
		end
	end

	def principal
		@principal ||= doc.search("div.contact-name").first.text.strip
	end

	def whats_special
		whats_special = doc.search("div.review-takeaways").text.strip.split("\n\n")[1]
		if whats_special == nil
			"Information not provided"
		else
			whats_special
		end
	end

	def downside
		downside = doc.search("div.review-takeaways").text.strip.split("\n\n")[3]
		if downside == nil
			"Information not provided"
		else
			downside
		end
	end

	def doc
		@doc ||= Nokogiri::HTML(open(self.url))
	end
end