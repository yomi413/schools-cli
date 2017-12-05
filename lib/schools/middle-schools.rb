class Schools::MiddleSchools
	attr_accessor :name, :url, :grades, :location, :telephone, :princial, :whats_special, :downside

	@@all = []

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
end