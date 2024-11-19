pull:
	mkdir data
	curl -o data/all_cards.json https://data.scryfall.io/all-cards/all-cards-20241118224939.json

format:
	cat ./data/all_cards.json | \
	  sed 's/^\[//' | \
	  sed 's/^\]//' | \
	  sed -r '/^\s*$$/d' | \
	  sed 's/,$$//' > ./data/formatted_cards.json

import:
	psql -d cards -c \
	  "\copy cards.scryfall_cards(data) FROM './data/formatted_cards.json' csv quote e'\x01' delimiter e'\x02'"
