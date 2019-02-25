class Client < ApplicationRecord

validates :first, :last, presence: {message: "Cant be blank!"}

def fullname
	first.capitalize +""+ last.capitalize
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