-- Verify cards:scryfall_cards on pg

BEGIN;

SELECT id, data, inserted_at
FROM cards.scryfall_cards
WHERE FALSE;

ROLLBACK;
