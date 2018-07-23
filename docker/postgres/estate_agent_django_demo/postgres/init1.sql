CREATE USER estateagent;
ALTER USER estateagent WITH PASSWORD '3aPa55';
ALTER USER estateagent CREATEDB;
CREATE DATABASE estateagent OWNER estateagent;
GRANT ALL PRIVILEGES ON DATABASE estateagent TO estateagent;
