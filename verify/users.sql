-- Verify cards:users on pg

BEGIN;

SELECT nickname, password, timestamp
  FROM cards.users
 WHERE FALSE;

ROLLBACK;
