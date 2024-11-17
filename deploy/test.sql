BEGIN;

SET client_min_messages = 'warning';

CREATE TABLE cards.test (
  nickname  TEXT        PRIMARY KEY,
);

COMMIT;

