class Client < ApplicationRecord

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
 	dob.strftime("%d. #{month_names_ge(dob.mon)} %Y").html_safe
 end

 def gender_class
 	if gender.eql? "m"
			"mister-blue"
		else
			"pink-lady"		
		end
 end


 private

 def month_names_ge(month)
 	months = ["Januar",
 						"Februar",
 						"M&auml;rz"

 	]

 	return months[month-1]
 end


end 