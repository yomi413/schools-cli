class Schools::MiddleSchools
	attr_accessor :name, :url, :grades, :location, :telephone, :princial, :whats_special, :downside

	@@all = []

	def initialize
		@@all << self
	end

	def self.all
		@@all
	end

	def self.find(id)
		self.all[id-1]
	end
end