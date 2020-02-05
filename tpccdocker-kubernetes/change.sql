ALTER SYSTEM SET wal_level = "hot_standby";
Alter system set max_wal_senders = 5;
Alter system set hba_file = "var/lib/pg_hba.conf";
Alter system set wal_keep_segments = 32;
