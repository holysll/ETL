DROP TABLE IF EXISTS ODS_ZCOTM.STG_XX_T_CA_GHIRER_VDS;
create table ODS_ZCOTM.STG_XX_T_CA_GHIRER_VDS
(
  organization_id         string,
  organization_code       string,
  organization_name       string,
  organization_short_name string,
  operating_unit          string,
  operating_unit_name     string,
  province_id             string,
  province_id_name        string,
  city_id                 string,
  city_id_name            string,
  town_id                 string,
  town_id_name            string,
  address                 string,
  insert_user             string,
  insert_date             string,
  update_user             string,
  update_date             string
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036' STORED AS TEXTFILE;

DROP TABLE IF EXISTS ODS_ZCOTM.XX_T_CA_GHIRER_VDS;
create table ODS_ZCOTM.XX_T_CA_GHIRER_VDS
(
  organization_id         string,
  organization_code       string,
  organization_name       string,
  organization_short_name string,
  operating_unit          string,
  operating_unit_name     string,
  province_id             string,
  province_id_name        string,
  city_id                 string,
  city_id_name            string,
  town_id                 string,
  town_id_name            string,
  address                 string,
  insert_user             string,
  insert_date             string,
  update_user             string,
  update_date             string
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036' STORED AS TEXTFILE;



DROP TABLE IF EXISTS ODS_ZCOTM.HIS_XX_T_CA_GHIRER_VDS;
create table ODS_ZCOTM.HIS_XX_T_CA_GHIRER_VDS
(
  organization_id         string,
  organization_code       string,
  organization_name       string,
  organization_short_name string,
  operating_unit          string,
  operating_unit_name     string,
  province_id             string,
  province_id_name        string,
  city_id                 string,
  city_id_name            string,
  town_id                 string,
  town_id_name            string,
  address                 string,
  insert_user             string,
  insert_date             string,
  update_user             string,
  update_date             string
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036' STORED AS TEXTFILE;
