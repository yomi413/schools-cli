class Schools::MiddleSchools
	attr_accessor :name, :url, :grades, :location, :telephone, :princial, :whats_special, :downside

	@@all = []

	def self.new_from_index_page(school)
		self.new(
			"http://insideschools.org#{school.css("a").attribute("href").text}",
			school.css("div.result-info a.result-name").text.strip,
			school.css("div.result-grades").text.strip,
			school.css("div.result-address").text.strip.gsub("\n\n", ", ")
			)
		# binding.pry
	end

	def initialize(url=nil, name=nil, grades=nil, location=nil)
		@url = url
		@name = name
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

	def doc
		@doc ||= Nokogiri::HTML(open(self.url))
	end
end