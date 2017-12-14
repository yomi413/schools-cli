class Schools::CLI
  def call
   Schools::Scraper.new.make_schools
   start
 end

 def list
   puts ""
   puts ""
   puts "******** List of Public Middle Schools in District 8 of Bronx, NY ********"
   puts ""
   Schools::Scraper.new.schools_list
   puts ""
 end

 def start
   list

   puts ""
   puts "What school would you like more information about, by number?"
   input = gets.strip

   school = Schools::MiddleSchools.find(input.to_i)

   print_school(school)

   puts ""
   puts "Would you like to see another school? (y/n)"

   input = gets.strip.downcase
   if input == "y"
     start
   else
     puts ""
     puts "Goodbye! Please come again."
   end
 end

 def print_school(school)
   puts ""
   puts "**********************************************************************"
   puts ""
   puts "Name:       #{school.name}"
   puts "Address:    #{school.location}"
   puts "Telephone:  #{school.telephone}"
   puts "Grades:     #{school.grades}"
   puts "Website:    #{school.school_website}"
   puts "Principal:  #{school.principal}"
   puts ""
   puts "What's Special: #{school.whats_special}"
   puts "Downside:       #{school.downside}"
   puts ""
   puts "**********************************************************************"
   puts ""
 end

end