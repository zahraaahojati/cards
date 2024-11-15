-- Revert cards:appschema from pg

BEGIN;

DROP SCHEMA cards;

COMMIT;
