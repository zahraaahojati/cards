pull:
	curl -o data/all_cards.json https://data.scryfall.io/all-cards/all-cards-20241115101756.json

format:
	rm ./data/formatted_cards.json

	cat ./data/all_cards.json | \
	  sed 's/^\[//' | \
	  sed 's/^\]//' | \
	  sed -r '/^\s*$$/d' | \
	  sed 's/,$$//' > ./data/formatted_cards.json

import:
	psql -d cards -c \
	  "\copy cards.scryfall_cards(data) FROM '~/Repos/cards/data/formatted_cards.json' csv quote e'\x01' delimiter e'\x02'"
