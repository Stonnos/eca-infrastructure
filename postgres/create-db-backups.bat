cd AppData/Roaming/DBeaverData/drivers/clients/postgresql/win/14/
pg_dump.exe --verbose --username=postgres --host=localhost --port=5433 --format=p --encoding=UTF-8 --file D:\Files\backups\eca-audit-log-backup.sql --schema "public" --dbname=audit_log
pg_dump.exe --verbose --username=postgres --host=localhost --port=5433 --format=p --encoding=UTF-8 --file D:\Files\backups\eca-data-storage-backup.sql --schema "public" --dbname=data_storage
pg_dump.exe --verbose --username=postgres --host=localhost --port=5433 --format=p --encoding=UTF-8 --file D:\Files\backups\eca-backup.sql --schema "public" --dbname=eca
pg_dump.exe --verbose --username=postgres --host=localhost --port=5433 --format=p --encoding=UTF-8 --file D:\Files\backups\eca-ers-backup.sql --schema "public" --dbname=evaluation_results_storage
pg_dump.exe --verbose --username=postgres --host=localhost --port=5433 --format=p --encoding=UTF-8 --file D:\Files\backups\eca-mail-backup.sql --schema "public" --dbname=mail
pg_dump.exe --verbose --username=postgres --host=localhost --port=5433 --format=p --encoding=UTF-8 --file D:\Files\backups\eca-oauth-backup.sql --schema "public" --dbname=eca_oauth
pg_dump.exe --verbose --username=postgres --host=localhost --port=5433 --format=p --encoding=UTF-8 --file D:\Files\backups\eca-web-push-backup.sql --schema "public" --dbname=eca_web_push