DROP TABLE IF EXISTS DMR.DMR_TP_ORDERRELEASE;
CREATE TABLE IF NOT EXISTS DMR.DMR_TP_ORDERRELEASE(
year                          bigint                             COMMENT  '计划年',
year_month                    bigint                             COMMENT  '计划月份',
date                          bigint                             COMMENT  '计划日期',

arrive_year                   string                             COMMENT  '达到年',
ARRIVE_MONTH                  STRING                             COMMENT  '到达月份',
arrive_day                    string                             COMMENT  '到达日期',

base_id                       string                             COMMENT  '基地',
base_name                     string                             COMMENT  '基地名称',
brand_id                      string                             COMMENT  '品牌',
brand_name                    string                             COMMENT  '品牌名称',
change_address                string                             COMMENT  '变更后收车地址',
dest_cty_id                   string                             COMMENT  '目的地城市/地区名称',
dest_location_id              string                             COMMENT  '目的地',
dest_location_type            string                             COMMENT  '目的地类型',
dest_prvn_id                  string                             COMMENT  '目的地省',
dlr_id                        string                             COMMENT  '经销商ID',
dlr_name                      string                             COMMENT  '经销商名称',

dlvr_year                     string                             comment  '交车年',
dlvr_month                    string                             comment  '交车月份',
dlvr_day                      string                             COMMENT  '交车日期',

dms_pickup_year               string                             comment  'DMS收车年',
dms_pickup_month              string                             comment  'DMS收车月份',
dms_pickup_day                string                             COMMENT  'DMS收车日期',

factory_transportmode         string                             COMMENT  '主机厂发运方式',
factory_transportmodename     string                             COMMENT  '主机厂发运方式名称',
first_supplier                string                             COMMENT  '首段物流商',
first_transportmode           string                             COMMENT  '首段发运方式',
first_transportmodename       string                             COMMENT  '首段发运方式名称',
fixed_itinerary_gid           string                             COMMENT  '路由线路',
is_known_shipper              string                             COMMENT  '在途起票',

leave_cq_year                 string                             comment  '离渝年',
leave_cq_month                string                             comment  '离渝月份',
leave_cq_day                  string                             COMMENT  '离渝日期',

model_id                      string                             COMMENT  '车型',
oc_id                         string                             COMMENT  '运营中心',
oc_name                       string                             COMMENT  '运营中心名称',
on_passage_days               string                             COMMENT  '在途天数',
or_dealername                 string                             COMMENT  '收车单位OR_DEALERNAME',
or_dest_address               string                             COMMENT  '收车地址OR_DEST_ADDRESS',
or_distributorname            string                             COMMENT  '启票单位OR_DISTRIBUTORNAME',
or_plan_type                  string                             COMMENT  'CMAL/ZC.OR_PLAN_TYPE',
or_shipdesc                   string                             COMMENT  '发运说明OR_SHIPDESC',
or_transfer_address           string                             COMMENT  '中转地址OR_TRANSFER_ADDRESS',
order_release_gid             string                             COMMENT  'OTM单号',
order_staus                   string                             COMMENT  '订单状态',
out_notorder_num              decimal(32,8)                      COMMENT  '出库未打单数量',

proj_name                     string                             COMMENT  '项目名称',
rgn_id                        string                             COMMENT  '大区',
rgn_name                      string                             COMMENT  '大区名称',
second_supplier               string                             COMMENT  '次段物流商',
segment                       string                             COMMENT  '段次',
source_code                   string                             COMMENT  '源系统标识',
source_location_id            string                             COMMENT  '始发地',
source_location_type          string                             COMMENT  '始发地类型',
src_cty_id                    string                             COMMENT  '始发地城市/地区名称',
src_prvn_id                   string                             COMMENT  '始发地省',
transfer_station              string                             COMMENT  '中转组织代码',
transportstatus               string                             COMMENT  '运输状态',
vin                           string                             COMMENT  'VIN码'


) 
COMMENT '运输订单报表'
PARTITIONED BY(PART_SC STRING COMMENT  '数据来源',PART_DT STRING COMMENT  '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;