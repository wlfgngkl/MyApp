class Car < ApplicationRecord
	include PgSearch

pg_search_scope	:search_cars, against: [:brand,:color,:hp],
			using: :tsearch,
 			ranked_by: ":trigram"
end
