-- Deploy cards:scryfall_cards to pg
-- requires: appschema

BEGIN;

CREATE TABLE cards.scryfall_cards (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  data jsonb NOT NULL,
  inserted_at timestamptz NOT NULL DEFAULT NOW()
);

COMMIT;
