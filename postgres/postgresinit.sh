ECA_DB_NAME=eca
ECA_OAUTH_DB_NAME=eca_oauth
ERS_DB_NAME=evaluation_results_storage
MAIL_DB_NAME=mail
ECA_DS_DB_NAME=data_storage
ECA_AUDIT_LOG_DB_NAME=audit_log
BACKUPS_FOLDER=backups
psql -v ON_ERROR_STOP=1 --username $POSTGRES_USER <<-EOSQL
    CREATE DATABASE $ECA_DB_NAME;
	  CREATE DATABASE $ECA_OAUTH_DB_NAME;
	  CREATE DATABASE $ERS_DB_NAME;
    CREATE DATABASE $MAIL_DB_NAME;
    CREATE DATABASE $ECA_DS_DB_NAME;
    CREATE DATABASE $ECA_AUDIT_LOG_DB_NAME;
EOSQL
pg_restore -U $POSTGRES_USER -d $ECA_DB_NAME $BACKUPS_FOLDER/eca-db.backup
pg_restore -U $POSTGRES_USER -d $ECA_OAUTH_DB_NAME $BACKUPS_FOLDER/eca-oauth.backup
pg_restore -U $POSTGRES_USER -d $ERS_DB_NAME $BACKUPS_FOLDER/ers-db.backup
pg_restore -U $POSTGRES_USER -d $MAIL_DB_NAME $BACKUPS_FOLDER/ndb.backup
pg_restore -U $POSTGRES_USER -d $ECA_DS_DB_NAME $BACKUPS_FOLDER/data-storage.backup
