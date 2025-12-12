SELECT setval(pg_get_serial_sequence('minter_minter', 'id'), (SELECT MAX(id) FROM minter_minter) + 1);
SELECT setval(pg_get_serial_sequence('minter_naan', 'id'), (SELECT MAX(id) FROM minter_naan) + 1);
SELECT setval(pg_get_serial_sequence('binder_ark', 'id'), (SELECT MAX(id) FROM binder_ark) + 1);
SELECT setval(pg_get_serial_sequence('binder_role', 'id'), (SELECT MAX(id) FROM binder_role) + 1);
