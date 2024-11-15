-- Verify cards:appschema on pg

BEGIN;

DO $$
BEGIN
  ASSERT (SELECT has_schema_privilege('cards', 'usage'));
END $$;

ROLLBACK;
