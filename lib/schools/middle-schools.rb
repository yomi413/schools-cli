class Schools::MiddleSchools
	attr_accessor :name, :url, :grades, :location, :telephone, :princial, :whats_special, :downside

	@@all = []

	def self.new_from_index_page(school)
		self.new(
			school.css("div.result-info a.result-name").text.strip,
			"https://insideschools.org#{school.css("a").attribute("href").text}",
			school.css("div.result-grades").text.strip,
			school.css("div.result-address").text.strip.gsub("\n\n", ", ")
			)
		# binding.pry
	end

	def initialize(name=nil, url=nil, grades=nil, location=nil)
		@name = name
		@url = url
		@grades = grades
		@location = location
		@@all << self
	end

	def self.all
		@@all
	end

	def self.find(id)
		self.all[id-1]
	end

	def telephone
		@telephone ||= doc.search("div.contact-point").text.strip
	end

	def principal
		@principal ||= doc.search("div.contact-name").first.text.strip
	end

	def doc
		@doc ||= Nokogiri::HTML(open(self.url))
	end
end