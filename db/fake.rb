

module Fake

	


	def firstname(gender=nil)
		translate = {
			male: :male,
			m: :male,
			female: :female,
			f: :female
		}

		if gender
				return randomizeNames(translate[gender.to_sym])
		else
			genders = [:male, :female]
			rander =   randomize(0,1)

			return randomizeNames(genders[rander])
		end
		
	end

	def lastname
		return randomizeNames(:common)
	end

	def date(start, ending)
		if start.class == Date and ending.class == Date
			randomDate(start, ending)
		else
			raise "First and second argument must be Date-Objects"
		end
	end

	def email(prefix)
		return "#{prefix}@#{randomizeNames(:domains)}"
	end
	


	private

	def names(type_of)
		n = {
			male: %w(Ilfried Mockel Jockel Meisteer Harris Dobbby Ulk Muckl Honk Spacken Addi Reini Malte Dankwart Gottesfurcht Hazard Neymar Cavani Piontek Zagadu Reus Kovac Lasogga Willian Ramos Karius Iker Jaroslav Ceszlav Ter-Stegen Bomber Gangsta),
			female: %w(Lotte Cindy Mandy Sandy Chantalle Samantha Elli Biggi Siggi Gerda Marta Chelsea Siegried Nora Vera Britt Claudi Karla Kunigunde Elsa Paula Doerthe),
			common: %w(Marcos Schmidtos Meieros Jahnos Mayeros Labos Gerberos Baldos Burgos Gutos Hellos Eros Rummeniggeros Merkleros Seehoferos Fraukeros Kamperos Karrenbaueros Soederos Gaulanderos Weigleros Gyseros Kohlos ),
			domains: %w(rails.com yield.net noodle.it smoke.nl rave.cz tea.org cheese.ch schmarn.at wine.fr beer.de car.pl )
		}

		return n[type_of]
	end

	def randomize(from,to)
		return Random.new.rand(from...to)
	end


	def randomDate(start, ending)
		year = randomize(start.year,ending.year)
		month = randomize(start.mon,ending.mon)
		day = randomize(start.day,ending.day)

		return Date.new(year,month,day).to_s
	end

	def randomizeNames(type_of)
		randomNames = names(type_of)
		return randomNames[randomize(0, (randomNames.size-1))]
	end

end

