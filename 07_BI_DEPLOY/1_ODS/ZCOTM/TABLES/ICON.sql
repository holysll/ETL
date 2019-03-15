DROP TABLE IF EXISTS ODS_ZCOTM.STG_ICON;
create table ODS_ZCOTM.STG_ICON
(
  icon_gid    string,
  icon_xid    string,
  description string,
  path        string,
  domain_name string,
  insert_user string,
  insert_date string,
  update_user string,
  update_date string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\036'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS ODS_ZCOTM.ICON;
create table ODS_ZCOTM.ICON
(
  icon_gid    string,
  icon_xid    string,
  description string,
  path        string,
  domain_name string,
  insert_user string,
  insert_date string,
  update_user string,
  update_date string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\036'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;



DROP TABLE IF EXISTS ODS_ZCOTM.HIS_ICON;
create table ODS_ZCOTM.HIS_ICON
(
  icon_gid    string,
  icon_xid    string,
  description string,
  path        string,
  domain_name string,
  insert_user string,
  insert_date string,
  update_user string,
  update_date string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\036'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;