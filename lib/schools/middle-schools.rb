class Schools::MiddleSchools
	attr_accessor :name, :url, :grades, :location, :telephone, :princial, :whats_special, :downside

	@@all = []

	def self.all
		@@all
	end
end