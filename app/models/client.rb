class Client < ApplicationRecord

validates :firstname, :lastname, presence: {message: "Cant be blank!"}

def fullname
	firstname.capitalize +""+ lastname.capitalize
end

def title
	if gender
		if gender.eql? "m"
			"Herr#{fullname}"
		else
			"Frau#{fullname}"
		end
	else
		fullname
	end

 end
end 