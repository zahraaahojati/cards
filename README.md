# Cards

This is a project for learning about postgres by splitting up MTG trading card data from Scryfall and placing them into their own tables.

## Data

There is a three step process to place data into the database:

1. `make pull` pulls the data from Scryfall and places it in `data/all_cards.json`
2. `make format` updates the JSON format to what PostgreSQL will expect to see from the `\copy` command
3. `createdb cards && sqitch deploy` so that you can set up the database
4. `make import` imports the data from `data/formatted_cards.json` that was produced from the previous step into the `cards.scryfall_cards` table
