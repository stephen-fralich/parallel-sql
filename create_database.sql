CREATE TABLESPACE parallel LOCATION '/var/lib/postgres/parallel_tablespace';
CREATE DATABASE parallel TABLESPACE parallel;
ALTER TABLESPACE parallel SET ( random_page_cost = 0.1 );
CREATE ROLE parallel_admin WITH LOGIN CREATEROLE CREATEUSER PASSWORD '';
ALTER DATABASE parallel OWNER TO parallel_admin;
ALTER TABLESPACE parallel OWNER TO parallel_admin;
