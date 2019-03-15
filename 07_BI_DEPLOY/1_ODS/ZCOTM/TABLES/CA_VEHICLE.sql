DROP TABLE IF EXISTS ODS_ZCVDC.CA_VEHICLE;
CREATE TABLE ODS_ZCVDC.CA_VEHICLE (
seqno            BIGINT, 
ogid             STRING, 
whid             STRING, 
ghirerid         STRING, 
org_id           BIGINT, 
vin              STRING, 
cargoid          STRING, 
cargoname        STRING, 
modelid          STRING, 
catcode          STRING, 
colorid          STRING, 
batchno          STRING, 
rwflag           STRING, 
cainputdate      STRING
) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036' STORED AS PARQUET;

DROP TABLE IF EXISTS ODS_ZCVDC.STG_CA_VEHICLE;
CREATE TABLE ODS_ZCVDC.STG_CA_VEHICLE (
seqno            BIGINT, 
ogid             STRING, 
whid             STRING, 
ghirerid         STRING, 
org_id           BIGINT, 
vin              STRING, 
cargoid          STRING, 
cargoname        STRING, 
modelid          STRING, 
catcode          STRING, 
colorid          STRING, 
batchno          STRING, 
rwflag           STRING, 
cainputdate      STRING
) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036' STORED AS TEXTFILE;

DROP TABLE IF EXISTS ODS_ZCVDC.HIS_CA_VEHICLE;
CREATE TABLE ODS_ZCVDC.HIS_CA_VEHICLE (
seqno            BIGINT, 
ogid             STRING, 
whid             STRING, 
ghirerid         STRING, 
org_id           BIGINT, 
vin              STRING, 
cargoid          STRING, 
cargoname        STRING, 
modelid          STRING, 
catcode          STRING, 
colorid          STRING, 
batchno          STRING, 
rwflag           STRING, 
cainputdate      STRING
) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036' STORED AS PARQUET;
