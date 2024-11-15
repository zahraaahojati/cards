-- Revert cards:users from pg

BEGIN;

DROP TABLE cards.users;

COMMIT;
