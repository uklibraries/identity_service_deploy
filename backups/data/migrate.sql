TRUNCATE TABLE minter_minter RESTART IDENTITY;
\copy minter_minter FROM /backups/minter.csv DELIMITER ',' CSV HEADER;

TRUNCATE TABLE binder_ark RESTART IDENTITY;
\copy binder_ark FROM /backups/binder.csv DELIMITER ',' CSV HEADER;
