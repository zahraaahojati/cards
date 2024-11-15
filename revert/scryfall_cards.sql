-- Revert cards:scryfall_cards from pg

BEGIN;

DROP TABLE cards.scryfall_cards;

COMMIT;
