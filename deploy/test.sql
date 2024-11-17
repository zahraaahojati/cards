BEGIN;

SET client_min_messages = 'warning';

CREATE TABLE cards.test (
  SELECT 
    'cmc' AS CmC
FROM 
    scryfall_cards;
);

COMMIT;

