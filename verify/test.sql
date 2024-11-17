BEGIN;

SELECT nickname
  FROM cards.test
 WHERE FALSE;

ROLLBACK;