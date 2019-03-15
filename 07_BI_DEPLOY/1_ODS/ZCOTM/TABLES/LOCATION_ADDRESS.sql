DROP TABLE IF EXISTS ODS_ZCOTM.STG_LOCATION_ADDRESS;
create table ODS_ZCOTM.STG_LOCATION_ADDRESS
(
  location_gid  string,
  line_sequence decimal(32,8),
  address_line  string,
  domain_name   string,
  insert_user   string,
  insert_date   string,
  update_user   string,
  update_date   string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\036'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS ODS_ZCOTM.LOCATION_ADDRESS;
create table ODS_ZCOTM.LOCATION_ADDRESS
(
  location_gid  string,
  line_sequence decimal(32,8),
  address_line  string,
  domain_name   string,
  insert_user   string,
  insert_date   string,
  update_user   string,
  update_date   string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\036'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;

DROP TABLE IF EXISTS ODS_ZCOTM.HIS_LOCATION_ADDRESS;
create table ODS_ZCOTM.HIS_LOCATION_ADDRESS
(
  location_gid  string,
  line_sequence decimal(32,8),
  address_line  string,
  domain_name   string,
  insert_user   string,
  insert_date   string,
  update_user   string,
  update_date   string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\036'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;