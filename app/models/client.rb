class Client < ApplicationRecord
	include PgSearch

pg_search_scope	:search_clients, against: [:lastname,:firstname,:email,:dob],
			using: :tsearch,
 			ranked_by: ":trigram"

validates :firstname, :lastname, presence: {message: "Cant be blank!"}


 def fullname
	"#{firstname.capitalize} #{lastname.capitalize}"
 end

 def title
		if gender.eql? "m"
			"Herr"
		else
			"Frau"		
		end
 end

 def date_of_birth
 	dob.strftime("%d. #{month_names_ge(dob.mon)} %Y").html_safe unless dob.nil?
 end

 def gender_class
 	if gender.eql? "m"
			"mister"
		else
			"lady"		
		end
 end


 private

 def month_names_ge(month)
 	months = ["Januar",
 						"Februar",
 						"M&auml;rz",
 						"April",
 						"Mai",
 						"Juni",
 						"Juli",
 						"August",
 						"September",
 						"Oktober",
 						"November",
 						"Dezember"
 	]

 	return months[month-1]
 end


end 