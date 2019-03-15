class Pkmn < ApplicationRecord
	include PgSearch
	
	pg_search_scope	:search_pkmns, against: [:gen,:name,:typ1, :typ2 ],
			using: :tsearch,
 			ranked_by: ":trigram"
end
